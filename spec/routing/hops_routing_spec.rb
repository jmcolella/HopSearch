require "rails_helper"

RSpec.describe HopsController, type: :routing do

  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hops").to route_to("hops#index")
    end

    it "routes to #show" do
      expect(:get => "/hops/1").to route_to("hops#show", :id => "1")
    end

    it "routes to #search" do
      expect(:get => "/hops/search").to route_to("hops#search")
    end
  end

end