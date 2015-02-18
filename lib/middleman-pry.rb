require 'middleman-core/cli'

module Middleman
  module Cli
    # Override the built-in console command
    class Console
      def console
        require 'middleman-core'
        require 'pry'

        environment = options['environment']
        verbose     = options['verbose']

        @app = ::Middleman::Application.server.inst do
          set :environment, environment.to_sym if environment

          ::Middleman::Logger.singleton(verbose ? 0 : 1, false)
        end

        @app.pry
      end
    end
  end
end
