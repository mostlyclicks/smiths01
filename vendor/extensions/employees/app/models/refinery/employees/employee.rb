module Refinery
  module Employees
    class Employee < Refinery::Core::BaseModel
      self.table_name = 'refinery_employees'

      attr_accessible :name, :picture_id, :job_title, :number_of_bikes, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :picture, :class_name => '::Refinery::Image'
    end
  end
end
