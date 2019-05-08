FactoryBot.define do
  factory :listing do
    name { "MyString" }
    location { "MyString" }
    description { "MyText" }
    email { "MyString" }
    phone_number { "MyString" }
    availability { "MyString" }
    association :owner, factory: :user
  end
end
