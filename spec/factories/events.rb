# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    start_date "2013-01-22"
    end_date "2013-01-22"
    content "MyText"
  end
end
