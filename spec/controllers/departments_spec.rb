require 'rails_helper'

RSpec.describe DepartmentsController, type: :controller do

    describe ' GET #index ' do
    let!(:department) {create(:department)}
      before{get :index}

      it 'assigns @departments ' do
        expect(assigns(:departments )).to eq([department])

      end


      it 'renders index template' do
        expect(response).to be_successful
      end

    end

    describe 'GET #new' do
        let!(:department) {create(:department)}
        before {get :new}

        it {should render_template('new')}
           
    end


    describe 'POST #create' do


        before{ post :create, params:{
                    department: {
                        dept_name: 'CSE',
                        dept_code: '1'
                    }
                } }
    

        it{should redirect_to(departments_path)}

        it "should create a new user" do
            expect(assigns(:department)).to be_a(Department)  

            expect(assigns(:department)).to be_persisted  
        end


    end 

     

end