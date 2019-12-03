require 'rails_helper'

RSpec.describe Person, type: :model do
  context "valid Factory" do
    it "has a valid factory" do
      expect(build(:person)).to be_valid
    end
  end
end
