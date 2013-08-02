# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :venue do
    venue_type "MyString"
    location_id 1
  end
end
