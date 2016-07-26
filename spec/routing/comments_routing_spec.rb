require "rails_helper"


RSpec.describe CommentsController, type: :routing do


  describe "routing" do

    it "routes to #new" do
      expect(:get => "/hops/1/comments/new").to route_to("comments#new", :hop_id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hops/1/comments").to route_to("comments#create", :hop_id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hops/1/comments/1/edit").to route_to("comments#edit", :hop_id => "1", :id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hops/1/comments/1").to route_to("comments#update", :hop_id => "1", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hops/1/comments/1").to route_to("comments#update", :hop_id => "1", :id => "1")
    end

    it "routes to #delete" do
      expect(:delete => "/hops/1/comments/1").to route_to("comments#destroy", :hop_id => "1", :id => "1")
    end

  end

end