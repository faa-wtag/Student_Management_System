require 'faker'

FactoryBot.define do
    factory :course do
        #course_title {Faker::Name.name}
        course_title {Faker::Educator.course_name}
        course_code {Faker::Code.asin}
        
        department { create(:department) }
    end

end

