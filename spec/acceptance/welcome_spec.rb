require 'acceptance/acceptance_helper'

feature 'Welcome', %q{
  In order to show how to work around with steak, rspec, capybara
  As a anonymous user
  I want to see welcome text
} do

  background do
    @user = create_user("user1")
  end

  scenario 'should show welcome page' do
    visit '/'

    within('.title') do
      page.should have_content("#{@user.screen_name}, welcome to our Stellar. It is about to explore!")
    end
  end
end
