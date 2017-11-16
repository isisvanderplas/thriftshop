require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
    it "is invalid without name" do
      profile = Profile.new(name: "")
      profile.valid?
      expect(profile.errors).to have_key(:name)
    end

    it "is invalid without address" do
      profile = Profile.new(address: "")
      profile.valid?
      expect(profile.errors).to have_key(:address)
    end

    it "is invalid without phone number" do
      profile = Profile.new(phone_number: "")
      profile.valid?
      expect(profile.errors).to have_key(:phone_number)
    end

    it "is invalid when phone number contains other than numbers" do
      profile = Profile.new(phone_number: "string")
      profile.valid?
      expect(profile.errors).to have_key(:phone_number)
    end
  end

  describe "association with user" do
    let(:user) {create :user}
    it "belongs to a user" do
      profile = user.profile.build(name: "Name")

      expect(profile.user).to eq(user)
    end
  end
end
