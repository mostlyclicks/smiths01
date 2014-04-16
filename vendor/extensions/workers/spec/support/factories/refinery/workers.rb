
FactoryGirl.define do
  factory :worker, :class => Refinery::Workers::Worker do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

