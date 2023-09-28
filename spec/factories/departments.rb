
require 'faker'
FactoryBot.define do
    factory :department do
      dept_name {Faker::Name.name}
      dept_code { [1, 2, 3, 4, 5].sample }

    end
end