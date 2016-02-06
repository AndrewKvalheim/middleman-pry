require 'middleman-core/cli'
require 'middleman-core/version'
require 'middleman-pry/interaction'
require 'middleman-pry/version'

module Middleman
  module Pry
    # Middleman extension
    class Extension < ::Middleman::Extension
      def initialize(app, **options_hash)
        super

        override_v4 || override_v3 || abort
      end

      private

      def abort
        message = "Middleman Pry #{Middleman::Pry::VERSION} is incompatible " \
                  "with Middleman #{Middleman::VERSION}. Please report this " \
                  "at https://github.com/AndrewKvalheim/middleman-pry/issues."

        fail NotImplementedError, message
      end

      def override_v3
        return unless Middleman::Cli::Console.private_method_defined?(:interact_with)

        Middleman::Cli::Console.prepend Interaction
      end

      def override_v4
        return unless Middleman::Cli::Console.respond_to?(:interact_with)

        Middleman::Cli::Console.singleton_class.prepend Interaction
      end
    end
  end
end
