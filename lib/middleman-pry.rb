require 'middleman-core/cli'

module Middleman
  module Cli
    # Override the built-in console command
    class Console
      def interact_with(context)
        require 'pry'

        context.pry
      end
    end
  end
end
