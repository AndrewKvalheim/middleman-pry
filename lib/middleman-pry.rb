require 'middleman-core/cli'

# Override the built-in console command
class Middleman::Cli::Console
  def console
    require 'middleman-core'
    require 'pry'

    instance_options = {
      :environment => options['environment'],
      :verbose     => options['verbose']
    }

    @instance = ::Middleman::Application.server.inst do
      if instance_options[:environment]
        set :environment, instance_options[:environment].to_sym
      end

      ::Middleman::Logger.singleton(instance_options[:verbose] ? 0 : 1, false)
    end

    @instance.pry
  end
end
