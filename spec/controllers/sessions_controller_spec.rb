require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  let(:user) {FactoryGirl.create(:user_1)}
  let(:user_2) {User.all.first}

  describe "GET #new" do

    context "user is not signed in" do
      it "assigns @user as User.new" do
        get :new
        expect(assigns(:user)).to be_instance_of(User)
      end

      it "renders the new session template" do
        get :new
        expect(response).to render_template("new")
      end
    end

    context "user is already signed in" do
      it "redirects to the root path" do
        session[:user_id] = user.id
        get :new
        expect(response).to redirect_to(root_path)
      end
    end

  end

  describe "POST #create" do

    context "valid login" do
      it "redirects to the root path" do
        credentials = {email: user_2.email, password: "password"}
        post :create, {users: credentials}
        expect(response).to redirect_to(root_path)
      end
    end

    context "invalid login" do
      it "renders the new session template" do
        credentials = {email: user_2.email, password: ""}
        post :create, {users: credentials}
        expect(response).to render_template("new")
      end
    end

  end

  describe "DELETE #destroy" do

    it "redirects to the root path" do
      delete :destroy
      expect(response).to redirect_to(root_path)
    end

  end

end
