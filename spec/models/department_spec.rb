require 'rails_helper'

RSpec.describe Department, type: :model do
    let!(:department) { FactoryBot.create(:department) }
  
    describe "when creating a department" do
      it 'has a valid factory' do
        #binding.pry
        expect(department).to be_valid
      end
      #validation testing
      it { should validate_presence_of (:dept_name)}

      it { should validate_presence_of (:dept_code) }

      it { should_not allow_value('').for(:dept_name)}
   
      it { should_not allow_value('').for(:dept_code)}

      #associations testing

      it { should have_many(:users)}
      it { should have_many(:courses)}
    
    end

end