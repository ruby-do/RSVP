FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "josh#{n}@josh.com" }
    phone_number "8097635455"
    first_name "Josue"
    last_name "Abreu"
    password Faker::Internet.password
  end
end
