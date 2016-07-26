require 'rails_helper'

RSpec.describe Comment, type: :model do

  describe "Comment model associations" do

    it { should belong_to(:user) }

    it { should belong_to :hop }

  end

  describe "Comment model validations" do

    context "valid comment" do
      it "creates a valid comment" do
        expect(FactoryGirl.create(:comment_1)).to be_valid
      end
    end

    context "invalid comment" do
      it "does not create an invalid comment" do
        expect(FactoryGirl.build(:comment_2)).not_to be_valid
      end
    end

  end


end
