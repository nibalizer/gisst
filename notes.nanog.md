nanog
=====


openflow
========

Open Networking Forum
90 members, 30grand per year to be a member

more ports being built that being shipped in 'known manufactures'

openflow is real in the datacenter

google has hint hinted that we need openflow switches from vendors

central control of openflow

core:
  software defined networking
  centrally controlled

lawful intercept
fienly tune where things go in the network from a central location


important abstractions:
  flow table
  https://docs.google.com/presentation/d/1ZeaD9hAOcuXPrtXlZD7i9FdJo3MqYSG-VEQV5X5RA4w/edit#slide=id.g15646735_0_46

  headers:
    tcam in layer 2 switch
    fib in a layer3 device
  
  actions:
    forward
    normal - tell the packet to take the normal path (leave openflow context)
    modify the packet

  counters:

  
  proactive rules set:
    add rules by admin  
    

  reactive rules set:
    no rule matching a packet:
      sent to controller
        rule generated at controller and put into switch



  tcp between switch and controller
  who initiates conversation

  campus example:
    switch gets minimum configuration
    switch connects to controller
    controller interogates switch and figuress out where it is  
    puts a lldp packet out each port on the switch, waits for them to come back through other switches, maps interconnections


  data structure moving through a pipeline in the switch

  no turing complete flow tables
  
  in openflow1.1 the protocol and system changed
  groups of flow entries can be chained
  32 metadata bits can be set/get and table groups can set and get these valuse


  in openflow1.3 changed again
  heavy QOS stuff
  meters/thresholds/counters
  meter bands help classify
    two actions;
      drop traffic
      remark it


  mininet is teh jawesomesors 
  mininet -> lxc based
    create of controller
    hosts
    use guacamole to remote xforward wireshark
    go

  hands on:
    made a of network
    controller is being your classic learning swittch
  reccoments:
    get hands on aws micro image used for training
    fire up classic learning switch
    stare at wireshark, look at whats going on


there are more layers than layer3
=================================

ipv6 hurts babies and small children and cute animals

in addr lookups
  ftp
  smtp
  security devices
  IPAM

when you got addr space in v4 you put in .in.addr

single subnet is /64, 4bil x 4bl addrs
ptr record has 34 labels in ipv6

what do?

* admin PTRs are pointless

* prepopulate stats for routers & big servers

* as aboute plus dhcp server adding clients

* lie on the fly (if not doing dnssec)

ICMPv6

* cant filter it all unless network death
* icmpv6 much more detailed/precise in types and fucntions
* rfc 4890

IPSEC: Myth vs Reality

run out of addrs - sure whatever
ipv6 is more secure than ipv4 becuase ipsec is built in


superstorm sandy: infrastructure impacts
========================================


basics:
  Oct 2012
  65Billion in dmg
  prime dc area in downtown  manhattan
    60 hudson
    111 8th Ave
    65 Halsey
  significant nexus of finanical exchange

big issues:
  flooding
  availability of deisel

  generally:
    better prepared did better

  many DCs were at the mercy of the building manager

  availability of fuel in constrained metro regions

  concerns over convering high rise building into datacenter


Best current operational practices
==================================

gonna be traffic on the nanog list on this soon

build bcop documentation for the globe to use

reflect the way things are actually done

real operator input - on the ground people



















