require 'rails_helper'
#require 'spec_helper'
#--require spec_helper


RSpec.describe UsersController, type: :controller do
    render_views #views are not rendered by default,
    #hence the partial is never getting rendered without this line
    #if we follow should matcher
    


    let!(:user) {create(:user, :student)}
    describe ' GET #index ' do
        before{get :index}
        
        it 'assigns @users' do
            expect(assigns(:users)).to eq([user])
             # :user, colon means it's not the params

        end

        it 'renders index template' do
          
            expect(response).to be_successful
            expect(response).to render_template('index')
            
        end

        it { should render_template('index') }
    end


    describe 'GET #new' do
        before {get :new}

        it {should render_template('new')}
        it {should render_template(partial: '_form')}
        # it 'renders partials' do
        #     expect(response).to render_template(partial: '_form')
        # end    
    end


    describe 'POST #create' do
        before{ post :create, params:{
                user: {
                    name: 'John Doe',
                    email: 'johndoe@example.com',
                    password: 'password123',
                    phone: '+8801866869218',
                    department_id: 1,
                    role: "student"
                }
            } }
        

        it "should create a new user" do
            #expect(respone).to change(User, :count).by(1) #Instead of count matcher we can check below things
            expect(assigns(:user)).to be_a(User)  #The record is an instance of the expected model   

            expect(assigns(:user)).to be_persisted  #The record is persisted. If I assign the model to @model
        end

        it{should redirect_to(users_path)}

        it "should accepts the params: " do
            expect(response.media_type).to eq('text/html')
        end

        it "should accepts the params: " do
            expect(response.content_type).to eq("text/html; charset=utf-8")
        end

    end    




    describe "PATCH #update" do
        let(:user1) {create(:user, :student)}

        context "with valid data" do
          it "updates the user and redirects" do
                patch :update,  params:{user: {name: 'John Doe',
                                            email: 'johndoe@example.com',
                                            password: 'password123',
                                            phone: '+8801866869218',
                                            department_id: 1,
                                            role: "student"}, id: user1.id}
                expect(response).to be_redirect
          end
        end


    end


    describe 'GET #show' do
        let!(:user1) {create(:user, :student)}
        before {get :show, params:{id: user1.id}}
        it {should render_template('show')}   
    end

    describe 'GET #edit' do
        let!(:user1) {create(:user, :student)}
        before {get :edit, params:{id: user1.id}}
        it {should render_template('edit')}   
    end

    describe 'destroy #delete' do
        let!(:user1) {create(:user, :student)}
    
        before {delete :destroy, params:{id: user1.id}}
        it{should redirect_to(users_path)}
    end

        
end
