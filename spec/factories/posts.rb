# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    talk_id 1
    user_id 1
    post_type "MyString"
    content "MyText"
  end
end
