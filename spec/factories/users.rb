FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "test#{n}" }
    password { '123456' }
    password_confirmation { '123456' }
  end
end
