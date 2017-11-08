FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :member do
    email { generate :email }
    password 'password'
  end
end
