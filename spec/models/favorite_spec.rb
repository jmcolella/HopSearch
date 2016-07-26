require 'rails_helper'

RSpec.describe Favorite, type: :model do

  describe "Favorite model associations" do

    it { should belong_to(:user) }

    it { should belong_to(:hop) }

  end

end
