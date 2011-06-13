module HelperMethods
  # Put helper methods you need to be available in all acceptance specs here.
  def create_user(login)
    User.create(:screen_name => login)
  end
end

RSpec.configuration.include HelperMethods, :type => :acceptance