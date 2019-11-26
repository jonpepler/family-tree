FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@test.example" }
    password { "p@55word" }
  end
end
