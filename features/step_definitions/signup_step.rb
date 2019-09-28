require_relative '../support/env'

Given("i am on the signup page") do
  visit('http://localhost:3000/signup')
end

When("i click on the submit button") do
  click_link_or_button('Create_my_account')
end

Then("i should be redirected to profile page") do
  #visit signup_path
  expect(page).to have_current_path(user_path(user))
end
