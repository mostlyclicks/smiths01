module Refinery
  module Workers
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Workers

      engine_name :refinery_workers

      initializer "register refinerycms_workers plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "workers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.workers_admin_workers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/workers/worker',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Workers)
      end
    end
  end
end
