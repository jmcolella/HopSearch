require 'rails_helper'

RSpec.describe HopsController, type: :controller do

   describe "GET #index" do
      it "assigns all hops as @hops" do
        get :index
        expect(assigns(:hops)).to eq(Hop.all)
      end
    end

end
