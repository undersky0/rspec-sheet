require "user"

describe "Callbacks" do 
  let(:user) { User.new }
  
  before(:each) do
    user.populate
  end
  
  it "has one profile" do
    expect(user.profile_count).to eq 1
  end
    it "has one profile" do
    expect(user.profile_count).to eq 2
  end
end
