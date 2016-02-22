FactoryGirl.define do
  factory :challenger do
    skip_create

    title Faker::Lorem.sentence
    description Faker::Lorem.sentence
    duration Faker::Number.between(1, 63)
  end
end
