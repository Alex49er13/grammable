FactoryBot.define do
    factory :model do
      sequence :email do |n|
        "dummyEmail#{n}@gmail.com"
      end
      password { "secretPassword" }
      password_confirmation { "secretPassword" }
    end
  end
