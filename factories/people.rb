require 'faker'

FactoryBot.define do
  factory :person do
    first_name { Faker::Name.first_name }
    other_names { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    description { Faker::Quote.famous_last_words }
    date_of_birth { Date.today - rand(100).years }
    date_of_death { Date.today - rand(5).years }
  end
end
