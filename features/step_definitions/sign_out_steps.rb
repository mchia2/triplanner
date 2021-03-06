Given(/^I am not logged in$/) do
   visit '/'
end

Then(/^I am signed out$/) do
  visit '/'
end

Given(/^I am logged in$/) do
  email = 'mchia2@gmail.com'
  password = 'cream234'
  User.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"
end

When(/^I click the sign out button$/) do
  click_link "Log out"
end

Then(/^I should see a signed out message$/) do
  visit '/'
end
