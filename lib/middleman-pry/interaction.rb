require 'pry'

module Middleman
  module Pry
    # Methods for facilitating an interactive console
    module Interaction
      def interact_with(context)
        context.pry
      end
    end
  end
end
