require 'spec_helper'

class HopsControllerTest < ActionController::TestCase

  describe HopsController do

    describe "GET #index" do
      it "assigns all hops as @hops" do
        get :index
        expect(assigns(:hops)).to eq(Hop.all)
      end
    end

  end
  # test "the truth" do
  #   assert true
  # end
end
