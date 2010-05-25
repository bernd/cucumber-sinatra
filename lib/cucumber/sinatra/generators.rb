require 'templater'

module Cucumber
  module Sinatra
    module Generators
      extend Templater::Manifold

      class InitGenerator < Templater::Generator
        def self.source_root
          File.join(File.dirname(__FILE__), 'templates')
        end

        desc <<-DESC
          Initialize a cucumber environment for a sinatra application.
            cucumber-sinatra MyApp lib/myapp.rb
        DESC

        first_argument :app_class, :required => true, :desc => 'Application class'
        second_argument :app_file, :required => true, :desc => 'Application file'

        option :app, :as => :boolean, :default => false, :desc => 'Create the application files as well.'

        template :env, 'features/support/env.rb'
        template :paths, 'features/support/paths.rb'
        template :steps, 'features/step_definitions/web_steps.rb'
        template :app_file, 'app.rbt', '%app_file_path%', :app => true
        template :rackup_file, 'config.ru', 'config.ru', :app => true

        def app_file_path
          app_file
        end
      end

      desc "Generators to simplify the usage of cucumber with sinatra."
      add :init, InitGenerator
    end
  end
end
