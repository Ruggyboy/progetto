Given("I am an ordinary registered user with username {string}, email {string} and password {string}") do |string1,string2,string3|
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

Given("I log in with email {string} and password {string}") do |string1,string2|
    visit ('http://localhost:3000/login')
    fill_in('Email', with: string1)
    fill_in('Password', with: string2)
    click_button('Log in')
end

When("I click on the button {string}") do |string1|
    click_link_or_button(string1)
end

When("I put {string} as name and {string} as location in the apposite fields") do |string1,string2|
    fill_in('Name', with: string1)
    fill_in('Location', with: string2)
end

When("I click onto the button {string}") do |string1|
    click_link_or_button(string1)
end

Then("I should be redirected to the band {string} profile page which shows location {string}") do |string1,string2|
    expect(page).to have_content("Band successfully created!")
    expect(page).to have_content(string1)
    expect(page).to have_content(string2)
end

