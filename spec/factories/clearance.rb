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
<<<<<<< HEAD
=======
    firstname { 'test_name' }
>>>>>>> b906689df1656d312700e2055073f801624d4f01
  end

end
