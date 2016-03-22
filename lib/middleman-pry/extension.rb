require 'middleman-core/version'
require 'middleman-pry/interaction'
require 'middleman-pry/version'

module Middleman
  module Pry
    # Middleman extension
    class Extension < ::Middleman::Extension
      def initialize(app, **options_hash)
        super

        begin
          send "override_v#{Middleman::VERSION[/^\d+/]}"
        rescue LoadError, NameError, NoMethodError
          abort
        end
      end

      private

      def abort
        message = "Middleman Pry #{Middleman::Pry::VERSION} is incompatible " \
                  "with Middleman #{Middleman::VERSION}. Please report this " \
                  "at https://github.com/AndrewKvalheim/middleman-pry/issues."

        fail NotImplementedError, message
      end

      def override_v3
        require 'middleman-core/cli'

        Middleman::Cli::Console.prepend Interaction
      end

      def override_v4
        require 'middleman-cli/console'

        Middleman::Cli::Console.singleton_class.prepend Interaction
      end
    end
  end
end
