# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    title "MyString"
    url "MyString"
    description "MyText"
    user_id 1
    created_at "2013-09-13"
  end
end
