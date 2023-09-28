require 'faker'

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6, max_length: 15) }
    phone { +8801534761102}
    department { create(:department) }
    # department_id { [1, 2, 3, 4].sample }

    trait :admin do
      role { 0 }
      department_id { 5 }

    end

    trait :student do
      role { 1 }
    end

    trait :teacher do
      role { 2 }
    end
  end
end
