require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a profile" do
    expect(User.new).to be_empty
  end
  
  context "with one profile" do
    let(:user)  {User.new(profile: [Profile.new])}
    it "has profile when initialized with one" do
      expect(user).not_to be_empty
    end
    
    it "counts the number of profiles" do
      expect(user.profile_count).to eq 1
    end
  end
end
