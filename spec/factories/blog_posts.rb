# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_post do
    title "MyString"
    content "MyText"
    created_at "2013-09-17"
  end
end
