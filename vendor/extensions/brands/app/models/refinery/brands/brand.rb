module Refinery
  module Brands
    class Brand < Refinery::Core::BaseModel
      self.table_name = 'refinery_brands'

      attr_accessible :name, :logo_id, :website, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :logo, :class_name => '::Refinery::Image'
    end
  end
end
