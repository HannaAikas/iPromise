FactoryBot.define do
  factory :promise do
    user
    text { 'default promise' }
    end_datetime { '31/01/2018' }
    interval { '2 days' }
  end
end
