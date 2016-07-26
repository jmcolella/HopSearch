require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) {FactoryGirl.create(:user_1)}

  describe "GET #new" do

    it "renders the new user page" do
      get :new
      expect(response).to render_template("new")
    end

  end

  describe "POST #create" do

    valid_user = {first_name: "Pete", last_name: "Smith", email: "psmith@gmail.com", password: "password"}
    invalid_user = {first_name: "Pete", last_name: "Smith", password: "password"}

    context "valid user sign up" do
      it "creates a new user in the database" do
        expect{
          post :create, {users: valid_user}
        }.to change(User, :count).by(1)
      end

      it "redirects to root path" do
        post :create, {users: valid_user}
        expect(response).to redirect_to(root_path)
      end
    end

    context "invalid user sign up" do
      it "does not creates a new user in the database" do
        expect{
          post :create, {users: invalid_user}
        }.to_not change(User, :count)
      end

      it "renders the new user template" do
        post :create, {users: invalid_user}
        expect(response).to render_template("new")
      end
    end

  end


  describe "GET #show" do

    it "finds the user and assigns it as @user" do
      get :show, {id: user.id}
      expect(assigns(:user)).to eq(user)
    end

    it "renders the user show template" do
      get :show, {id: user.id}
      expect(response).to render_template("show")
    end

  end

  describe "GET #edit" do

    it "finds the user and assigns it as @user" do
      get :edit, {id: user.id}
      expect(assigns(:user)).to eq(user)
    end

    it "renders the user edit render_template" do
      get :edit, {id: user.id}
      expect(response).to render_template("edit")
    end

  end

  describe "PUT #update" do

    valid_user_update = {first_name: "Pete", last_name: "Smith", email: "psmith@gmail.com", password: "password"}
    invalid_user_update = {first_name: "Pete", last_name: "", email: "psmith@gmail.com", password: "password"}

    context "valid user update info" do
      it "updates the user information" do
        put :update, {id: user.id, update: valid_user_update}
        user.reload
        expect(user.last_name).to_not eq("Doe")
        expect(user.last_name).to eq("Smith")
      end

      it "redirects to the user show page" do
        put :update, {id: user.id, update: valid_user_update}
        expect(response).to redirect_to(user)
      end
    end

    context "invalid user update info" do
      it "does not update the user information" do
        put :update, {id: user.id, update: invalid_user_update}
        user.reload
        expect(user.last_name).to eq("Doe")
      end

      it "renders the user edit template" do
        put :update, {id: user.id, update: invalid_user_update}
        expect(response).to render_template("edit")
      end
    end

  end

  describe "DELETE #destroy" do

    it "finds the user and assigns it as @user" do
      delete :destroy, {id: user.id}
      expect(assigns(:user)).to eq(user)
    end

    it "removes the user from the databse" do
      delete :destroy, {id: user.id}
      expect(User.where(id: user.id)).not_to exist
    end

    it "redirects to the root path" do
      delete :destroy, {id: user.id}
      expect(response).to redirect_to(root_path)
    end
  end

end
