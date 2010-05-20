cucumber-sinatra
================

# Description

This little gem will help you to initialize a cucumber environment for a sinatra
application. It will generate the required files from templates.

# Installation

It's available as a gem that can be installed with the following command.

        gem install cucumber-sinatra

# Usage

To initialize the cucumber environment, just execute `cucumber-sinatra` like this:

        cucumber-sinatra init MyApp lib/my_app.rb

* The first argument is the class name of your application.
* The second argument is the path to the application file that should be required.

# Copyright

Copyright (c) 2010 Bernd Ahlers. See LICENSE for details.
