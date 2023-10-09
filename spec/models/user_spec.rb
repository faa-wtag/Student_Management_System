require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { FactoryBot.create(:user, :student) }
  #binding.pry
  describe "when creating a user" do
    it 'has a valid factory' do
  
      expect(user).to be_valid
    end
 
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:role)} 
    it { should validate_presence_of(:phone)}
  
    it { should allow_value('user@example.com').for(:email) }
    it { should_not allow_value('not_an_email').for(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should_not allow_value('').for(:phone) }
    it { should_not allow_value('').for(:role) }
    it { should_not allow_value('').for(:name) }

    it { should_not allow_value('').for(:password) }

      
    # association test
    #it { should validate_presence_of(:department_id)} //not correct way
    it { should belong_to(:department)} 

    

    

  end

  


end
