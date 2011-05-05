Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name              = 'cucumber-sinatra'
  s.version           = '0.3.1'
  s.date              = '2011-05-05'
  s.rubyforge_project = 'cucumber-sinatra'

  s.summary     = "Initialize a cucumber environment for sinatra"
  s.description = "This little gem will help you to initialize a cucumber environment for a sinatra application. It will generate the required files from templates."

  s.authors  = ["Bernd Ahlers"]
  s.email    = 'bernd@tuneafish.de'
  s.homepage = 'http://github.com/bernd/cucumber-sinatra'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  s.executables = ["cucumber-sinatra"]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_dependency('templater', [">= 1.0.0"])

  # = MANIFEST =
  s.files = %w[
    CHANGES.md
    LICENSE
    README.md
    Rakefile
    bin/cucumber-sinatra
    cucumber-sinatra.gemspec
    lib/cucumber/sinatra.rb
    lib/cucumber/sinatra/generators.rb
    lib/cucumber/sinatra/templates/app.rbt
    lib/cucumber/sinatra/templates/config.ru
    lib/cucumber/sinatra/templates/features/step_definitions/web_steps.rbt
    lib/cucumber/sinatra/templates/features/support/env.rbt
    lib/cucumber/sinatra/templates/features/support/paths.rbt
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  #s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end
