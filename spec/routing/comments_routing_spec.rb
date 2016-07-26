require "rails_helper"


RSpec.describe CommentsController, type: :routing do


  describe "routing" do

    it "routes to #new" do
      expect(:get => "/hops/1/comments/new").to route_to("comments#new", :hop_id => "1")
    end

  end

end