module Refinery
  module Workers
    module Admin
      class WorkersController < ::Refinery::AdminController

        crudify :'refinery/workers/worker',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
