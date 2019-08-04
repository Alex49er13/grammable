FactoryBot.define do
  factory :comment do
    
  end

    factory :model do
      sequence :email do |n|
        "dummyEmail#{n}@gmail.com"
      end
      password { "secretPassword" }
      password_confirmation { "secretPassword" }
    end
  

  factory :gram do
    message {"hello"}
    picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }
  association :model
  end
end