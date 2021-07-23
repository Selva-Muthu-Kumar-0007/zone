FactoryBot.define do
  factory :zone do
  	name { Faker::Code.nric }
  	slug { Faker::Code.nric }
    state { 1 }
  end
end
