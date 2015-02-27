require 'middleman-core'

::Middleman::Extensions.register :pry do
  require 'middleman-pry/extension'

  Middleman::Pry::Extension
end
