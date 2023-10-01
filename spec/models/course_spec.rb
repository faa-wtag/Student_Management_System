require 'rails_helper'
RSpec.describe Course, type: :model do
    let!(:course) {FactoryBot.create(:course)}

    describe "when creating a course" do
        it "has a valid factory" do
            expect(course).to be_valid

        end

    #validation testing
    it { should validate_presence_of(:course_title) }
    it { should validate_presence_of(:course_code) }

    it { should_not allow_value('').for(:course_title) }
    it { should_not allow_value('').for(:course_code) }

    #association testing
    it { should belong_to(:department)} 
    end 
end

   