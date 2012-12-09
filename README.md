gisst
====

gist hack for ssh keys

 Gisst aims to replace all the bad gist command line utilites
 Basic strategy is to have one 'gisst' repository in your github 
 this script is in the master branch of that repository
 when called with a file argument it will checkout a new branch of
 the gist repo, copy in the argument, add, commit, push, and print 
 a link to the file on github

 This removes the need to have an api token or password written to
 a file in your homedirectory. All comm with github is done over ssh

 Requires ssh, git, and ssh keys set up with github
 Also requires a repo on your github named gisst, init will only
 work if you are running from a local clone of a repository you have
 readwrite to

 By default it uses $HOME/.gisst but looks for the GISSTDIR env 
 variable if you want to change that

usage
=====


  usage: gisst init"
  sets up gisst environment"
  usage: gisst <filename>"
  pushes file to github and prints out a link to it"
