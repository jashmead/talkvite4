# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tag do
    tag "MyString"
    description "MyString"
    tagable_id 1
    tagable_type "MyString"
  end
end
