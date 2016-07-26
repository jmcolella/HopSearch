require 'rails_helper'

RSpec.describe Hop, type: :model do

  let(:search) {["Galaxy"]}

  describe "Hop model associations" do

    it { should have_many(:comments) }

    it { should have_many(:favorites) }

    it { should have_many(:user_favorites).through(:favorites).source(:user) }

  end

  describe "Hop model instance methods" do

    describe "test method 'find_hop'" do

      it "returns an array" do
        expect(Hop.find_hop(search)).to be_instance_of(Array)
      end

      it "returns the correct search" do
        expect(Hop.find_hop(search)).to eq([Hop.find_by(name: "Galaxy")])
      end

    end

  end


end
