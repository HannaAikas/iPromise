FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :mobile do |n|
    n
  end

  factory :user do
    email
    password { "password" }
    mobile { '07500000000' }
    firstname { 'test_name' }
  end
end
