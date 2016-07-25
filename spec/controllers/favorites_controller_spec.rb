require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do

  let(:hop) {Hop.create}
  let(:user) {User.create(first_name: "John", last_name: "Smith", email: "jsmith@gmail.com", password: "password")}
  let(:favorite) {Favorite.create(hop_id: hop.id, user_id: user.id)}

  describe "POST #create" do

    it "finds the hop and assigns it as @hop" do
      post :create, {hop_id: hop.id}
      expect(assigns(:hop)).to eq(hop)
    end

    it "finds the user and assigns it as @user" do
      post :create, {hop_id: hop.id, user_id: user.id}
      expect(assigns(:user)).to eq(user)
    end

    it "creates a new favorite record" do
      expect{
        post :create, {hop_id: hop.id}
      }.to change(Favorite, :count).by(1)
    end

    it "redirects to the hop show page" do
      post :create, {hop_id: hop.id}
      expect(response).to redirect_to(hop)
    end

  end

  describe "DELETE #destroy" do

    it "finds the hop and assigns it as @hop" do
      delete :destroy, {hop_id: hop.id, user_id: user.id}
      expect(assigns(:hop)).to eq(hop)
    end

    it "finds the user and assigns it as @user" do
      delete :destroy, {hop_id: hop.id, user_id: user.id}
      expect(assigns(:user)).to eq(user)
    end

    it "creates a new favorite record" do
      pending
    end

    it "redirects to the hop show page" do
      pending
    end

  end

end
