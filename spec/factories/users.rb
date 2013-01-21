# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sample_name = ['jack', 'lucy', 'dave', 'lily', 'john', 'beth'].sample
  sequence(:name) { |n| "#{sample_name}#{n}" }
  sequence(:email) { |n| "#{sample_name}#{n}@example.com".downcase }

  factory :user do
    name
    tel ["13774545745", "12445456987", "14557845698", "14557845700"].sample
    email
    password ['DJX5nvyX', 'GG83Sr4{', '_pW.2P*8', 'MH^IN3B_'].sample
    password_confirmation { password }
  end
end
