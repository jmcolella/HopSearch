require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do

  let(:hop) {FactoryGirl.create(:hop)}
  let(:user) {User.find_by(id: 48)}
  let(:hop_favorite) {Hop.find_by(id: 47)}
  let(:favorite) {Favorite.find_by(hop_id: hop_favorite.id, user_id: user.id)}

  describe "POST #create" do

    it "finds the hop and assigns it as @hop" do
      post :create, {hop_id: hop.id, user_id: user.id}
      expect(assigns(:hop)).to eq(hop)
    end

    it "finds the user and assigns it as @user" do
      post :create, {hop_id: hop.id, user_id: user.id}
      expect(assigns(:user)).to eq(user)
    end

    it "creates a new favorite record" do
      expect{
        post :create, {hop_id: hop.id, user_id: user.id}
      }.to change(Favorite, :count).by(1)
    end

    it "redirects to the hop show page" do
      post :create, {hop_id: hop.id, user_id: user.id}
      expect(response).to redirect_to(hop)
    end

  end

  describe "DELETE #destroy" do

    it "finds the hop and assigns it as @hop" do
      delete :destroy, {hop_id: hop_favorite.id, user_id: user.id}
      expect(assigns(:hop)).to eq(hop_favorite)
    end

    it "finds the user and assigns it as @user" do
      delete :destroy, {hop_id: hop_favorite.id, user_id: user.id}
      expect(assigns(:user)).to eq(user)
    end

    it "removes the favorite record from the databse" do
      id = favorite.id
      delete :destroy, {hop_id: hop_favorite.id, user_id: user.id}
      expect(Favorite.where(id: id)).not_to exist
    end

    it "redirects to the hop show page" do
      delete :destroy, {hop_id: hop_favorite.id, user_id: user.id}
      expect(response).to redirect_to(hop_favorite)
    end

  end

end
