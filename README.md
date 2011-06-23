cucumber-sinatra
================

# Description

This little gem will help you to initialize a cucumber environment for a sinatra
application. It will generate the required files from templates.

For now it's generating an `env.rb` that is using [rspec](http://github.com/rspec/rspec)
and [capybara](http://github.com/jnicklas/capybara). More options might be added later.

# Installation

It's available as a gem that can be installed with the following command.

        gem install cucumber-sinatra

To use the generated templates without any modification, you'll have to install
the rspec (v2) and capybara (at least v1.0.0) gems as well.

# Usage

To initialize the cucumber environment, just execute `cucumber-sinatra` like this:

        # cucumber-sinatra init MyApp lib/my_app.rb
             [ADDED]  features/support/env.rb
             [ADDED]  features/support/paths.rb
             [ADDED]  features/step_definitions/web_steps.rb
        #

* The first argument is the class name of your application.
* The second argument is the path to the application file that should be required.

Using the `--app` option with `init` will also generate the given application file
and a working `config.ru`.

        # cucumber-sinatra init --app MyApp lib/my_app.rb
             [ADDED]  features/support/env.rb
             [ADDED]  features/support/paths.rb
             [ADDED]  features/step_definitions/web_steps.rb
             [ADDED]  lib/my_app.rb
             [ADDED]  config.ru
        #

# Copyright

The content of the following files has been taken from the
[cucumber-rails](http://github.com/cucumber/cucumber-rails) project which is licensed
under the MIT license.

* `lib/cucumber/sinatra/templates/features/step_definitions/web_steps.rbt`
* `lib/cucumber/sinatra/templates/features/support/paths.rbt`

The rest is licensed under a BSD license.

See the LICENSE file for a copy of both licenses.
