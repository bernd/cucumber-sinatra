ChangeLog
=========

# 0.3.1
* Remove `default_executable=` from gemspec to please rubygems >=1.8.

# 0.3.0
* Switch templates to rspec2. (akeem)

# 0.2.4
* Use the `RACK_ENV` environment variable to set the
  sinatra environment to 'test'. (See issue #1)

# 0.2.3
* Create a custom world class to avoid SystemStackError
  exceptions with capybara.

# 0.2.2
* Set sinatra environment to :test in the env.rb template.
* Fix indentation in the app.rb template.

# 0.2.1
* Clarify licenses.

# 0.2.0
* Install example web step definitions.
* Create an example `path_to` navigation helper.

# 0.1.0
* Initial release.
