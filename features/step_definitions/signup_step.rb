Given("i am on the signup page") do
  visit signup_path
end
When("i fill the relative fields with email {string} username {string} and password {string}") do |string, string2, string3|
    fill_in('Name',:with => string2)
    fill_in('Email', :with =>string)
    fill_in('Password',:with => string3)
    fill_in('Confirmation', :with =>string3)
end
When("i click on the 'Create my account' button") do
  click_button 'Create my account'
end
Then("i should be redirected to my profile with email {string} and username {string}") do |string, string2|
    userr=User.find_by_email(string)
    expect(userr.email.to_s).to eq(string)
    expect(userr.name.to_s).to eq(string2)
    expect(page).to have_content(string2)
end
