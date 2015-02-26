module Middleman
  module Pry
    # Middleman extension
    class Extension < ::Middleman::Extension
      def initialize(app, **options_hash)
        super

        require 'middleman-pry/cli'
      end
    end
  end
end
