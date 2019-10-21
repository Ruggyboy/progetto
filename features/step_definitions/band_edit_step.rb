Given("I am an ordinary registered user with username {string}, password {string} and email {string}") do |string1,string3,string2|
    visit signup_path
    fill_in('Name',:with => string1)
    fill_in('Email', :with =>string2)
    fill_in('Password',:with => string3)
    fill_in('Confirmation', :with =>string3)
    click_link_or_button 'Create my account'
    userr = User.find_by_email(string2)
    userr.should_not be_nil
    expect(User.find(userr.id)).to eq(userr)
end

Given("I log in with password {string} and email {string}") do |string2,string1|
    visit ('http://localhost:3000/login')
    fill_in('Email', with: string1)
    fill_in('Password', with: string2)
    click_button('Log in')
end

Given("I create a band called {string} with {string} as location") do |string1,string2|
    click_link_or_button("Become a leader")
    fill_in('Name', with: string1)
    fill_in('Location', with: string2)
    click_link_or_button("Create my band")
end

When("I click onto the {string} button") do |string1|
    click_link_or_button("Change band info")
end

When("I fill the name field with {string} and the location field with {string}") do |string1,string2|
    fill_in('Name', with: string1)
    fill_in('Location', with: string2)
end

When("I click onto {string} button") do |string1|
    click_link_or_button(string1)
end

Then("I should be redirected to the band profile page which shows {string} as name and {string} as location") do |string1,string2|
    expect(page).to have_content("Band information updated")
    expect(page).to have_content(string1)
    expect(page).to have_content(string2)
end
