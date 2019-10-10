require_relative '../support/env'

Given("i am on the homepage") do
  visit('http://localhost:3000')
end

When("i click on the signup button") do
  click_link_or_button('Still not registered? Sign up!')
end

Then("i should be redirected to the signup form page") do
  expect(page).to have_current_path(signup_path)
end
