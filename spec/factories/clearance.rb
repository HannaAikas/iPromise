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
  end

  # factory :promise do
  #   user
  #   text { 'default promise'}
  #   end_datetime { '31/01/2018' }
  #   interval { '2 days' }
  # end
end
