class User 
  
  def initialize(profile = {})
    @profile = profile
  end
  
  def empty?
    @profile.empty?
  end
  
  def profile_count
    @profile.count
  end
  
  def populate
    @profile << Profile.new
  end
  
end