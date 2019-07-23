require 'rails_helper'

RSpec.describe GramsController, type: :controller do
  describe "grams#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end



  describe "grams#new action" do
  it "should require users to be logged in" do
      get :new
      expect(response). to redirect_to new_model_session_path
  end
    it "should successfully show the new form" do
      model = FactoryBot.create(:model)
      sign_in model

      get :new
      expect(response).to have_http_status(:success)
    end
  end


  describe "grams#create action" do

  it "should require models to be logged in" do
    post :create, params: { gram: { message: "Hello" } }
    expect(response).to redirect_to new_model_session_path
  end

    it "should successfully create a new gram in our database" do
      model = FactoryBot.create(:model)
      sign_in model

      post :create, params: { gram: { message: 'Hello!' } }
      expect(response).to redirect_to root_path

      gram = Gram.last
      expect(gram.message).to eq("Hello!")
      expect(gram.model).to eq(model)
    end

    it "should properly deal with validation errors" do
      model = FactoryBot.create(:model)
      sign_in model

      gram_count = Gram.count
      post :create, params: { gram: { message: '' } }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(gram_count).to eq Gram.count
    end
 
  end 
end