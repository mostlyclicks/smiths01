module Refinery
  module Workers
    class Worker < Refinery::Core::BaseModel
      self.table_name = 'refinery_workers'

      attr_accessible :name, :pic_id, :job_title, :bio, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :pic, :class_name => '::Refinery::Image'
    end
  end
end
