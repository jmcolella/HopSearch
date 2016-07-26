require 'rails_helper'

RSpec.describe User, type: :model do

  let(:test_user) {User.all.first}
  let(:test_hop) {Hop.all.first}

  describe "valid and invalid users" do

    context "valid user" do
      it "creates a valid user" do
        expect(FactoryGirl.create(:user_1)).to be_valid
      end
    end

    context "invalid user" do
      it "does not create a user without a first_name" do
        expect(FactoryGirl.build(:user_3)).not_to be_valid
      end

      it "does not create a user without a last_name" do
        expect(FactoryGirl.build(:user_4)).not_to be_valid
      end

      it "does not create a user without an email" do
        expect(FactoryGirl.build(:user_5)).not_to be_valid
      end

      it "does not create a user with a duplicate email" do
        expect(FactoryGirl.build(:user_2, email: test_user.email)).not_to be_valid
      end

      it "does not create a user without a password" do
        expect(FactoryGirl.build(:user_6)).not_to be_valid
      end
    end

  end

  describe "User model associations" do

    it { should have_many(:comments) }

    it { should have_many(:favorites) }

    it { should have_many(:favorited_hops).through(:favorites).source(:hop) }

  end

  describe "User model instance methods" do

    context "test method 'favorite?'" do
      it "returns a boolean value" do
        expect(test_user.favorite?(test_hop)).to be_boolean
      end
    end

  end

end
