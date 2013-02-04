#!/usr/bin/env perl

use strict;
use warnings;
#use autodie;
use Data::Dumper;
use IO::Socket;

our $SERVER = 'graphite';
our $PORT = 2003;
our $UPDATES_PER_SECOND = 200;
our $NAMESPACE_PREFIX = $ENV{graphite_prefix} ? $ENV{graphite_prefix}."." : "nightfly.";
our $NAMESPACE = "usage_stats.";

our $watching_for = ["chrome","ssh","sshd","cdsServIpc","vim","emacs","chromium-browser","firefox"];
chomp(our $uname = `uname`);
chomp(our $hostname = ($uname eq "Linux") ? `hostname -f` : `hostname`);
$hostname =~ s/\./_/g;

sub graphite_log{
    my ($key, $value, $time) = @_;
    $time = (defined $time) ? $time : time();
    my ($graphite)= new IO::Socket::INET( PeerAddr => $SERVER, PeerPort => $PORT, Proto => 'tcp');
    my $message = "$NAMESPACE_PREFIX$NAMESPACE$key $value $time\n";
    print($message);
    $graphite->send($message);
    $graphite->shutdown(2);
    select(undef, undef, undef, 1/$UPDATES_PER_SECOND);
}


sub log_process{
    my($processes, $name, $user) = @_;
    if(grep(/^$name$/, @$watching_for)){
        if(not exists $processes->{$name}){
            $processes->{$name} = {$user => 1};
        }
        else{
            $processes->{$name}->{$user} = 1;
        }
    }
}

sub processes{
    my $processes = {};
    if($uname eq "SunOS"){
        open(my $ps, '-|', "ps -eo user,comm");
        while(my $line = <$ps>){
            if ($line =~ /^\s*(\S+)[\s-]+(.*?)([^\s\/]+)$/){
                log_process($processes, $3, $1);
            }
        }
    }
    else{
        open(my $ps, '-|', "ps -eo euser,comm | tail -n+2");
        while(my $line = <$ps>){
            if ($line =~ /^(\S+)\s+([^\s\/]+)/){
                log_process($processes, $2, $1);
            }
        }
    }
    return $processes;
}

sub report_processes{
    my ($processes) = @_;

    while( my ($key, $value) = each(%$processes)) {
        graphite_log("$hostname.$key", "".keys(%$value));
    }
}

sub ps_report{
    while(1){
        print "loop\n";
        &report_processes(&processes());
        select(undef, undef, undef, 10);
    }
}

&ps_report;
