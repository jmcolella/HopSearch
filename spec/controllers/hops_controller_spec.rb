require 'rails_helper'

RSpec.describe HopsController, type: :controller do

  let(:hop) { Hop.find_by(id: 1)}

  describe "GET #index" do

    it "assigns @hops" do
      hop = Hop.create
      get :index
      expect(assigns(:hops)).to eq([hop])
    end

    it "renders new template" do
      get :index
      expect(response).to render_template("index")
    end

  end

  describe "GET #show" do
    let(:hop) {Hop.create}
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
