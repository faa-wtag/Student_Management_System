require 'rails_helper'

RSpec.describe DepartmentsController, type: :controller do

    describe ' GET #index ' do
    let!(:course) {create(:course)}
      before{get :index}

      it 'assigns @courses ' do
        expect(assigns(:courses )).to eq([course])

      end


      it 'renders index template' do
        expect(response).to be_successful
      end

    end

    describe 'GET #new' do
        let!(:course) {create(:course)}
        before {get :new}

        it {should render_template('new')}
           
    end


    describe 'POST #create' do


        before{ post :create, params:{
                    course: {
                        course_title: 'Compiler Design',
                        course_code: '1',
                        department_id: 2
                    }
                } }
                

        it{should redirect_to(courses_path)}

        it "should create a new user" do
            expect(assigns(:course)).to be_a(Course)  

            expect(assigns(:course)).to be_persisted  
        end


    end 

     

end