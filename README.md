Gisst
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

Installation/Usage
=====

1. Fork the project to your github(required)*


2. Clone the repository

      $ git clone git@github.com:yourusername/gisst

3. cd into the repo root

      $ cd gisst
    

4. Initialize the gisst env
    
      $ gisst init 

5. Copy the gisst script to your path e.g.

      $ cp gisst ~/bin

6. Post a file, receive links

      $ gisst \<filename\>


License
=======

Copyright (c) 2012, Spencer Krum

All rights reserved.

Released under the BSD License


* If you don't want to fork it, you can clone the repository, create a gisst repo, add the new repo as a remote, and push to it(or even copy the files in). gisst parses the remote of the git repo to find your username and provide you tasty links and requires write access to a repository to push files to.
