require 'rails_helper'

RSpec.describe HopsController, type: :controller do

  let(:hop) { FactoryGirl.create(:hop)}

  describe "GET #index" do

    it "assigns @hops to sorted Hop table" do
      get :index
      expect(assigns(:hops)).to eq(Hop.all.sort_by { |hop| hop.id })
    end

    it "renders new template" do
      get :index
      expect(response).to render_template("index")
    end

  end

  describe "GET #show" do
    it "assigns a hop to @hop" do
      get :show, {id: hop.id}
      expect(assigns(:hop)).to eq(hop)
    end

    it "renders show template" do
      get :show, {id: hop.id}
      expect(response).to render_template("show")
    end
  end

  describe "GET #search" do

    let(:hop_to_find) { Hop.create(name:"Galaxy") }

    it "assigns an array to @search_results" do
      search = { hop: hop_to_find }
      get :search, {search: search}
      expect(assigns(:search_results)).to eq([])
    end

    it "renders search template" do
      search = { hop: hop_to_find }
      get :search, {search: search}
      expect(response).to render_template("search")
    end
  end

end
