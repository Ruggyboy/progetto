Given("I am an already registered user with username {string}, email {string} and password {string}") do |string1, string2, string3|
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
When("I sign in with email {string} and password {string}") do |string1, string2|
    visit ('http://localhost:3000/login')
    fill_in('Email', with: string1)
    fill_in('Password', with: string2)
    click_button('Log in')
end
When("I click onto {string}") do |string1|
    #expect(page).to have_content("aaa")
    click_link_or_button(string1)
end
Then("I should be on the edit form page") do
    userr = User.find_by_email("aaa@aaa.aaa")
    expect(page).to have_current_path('http://localhost:3000/users/'+(userr.id).to_s+'/edit')
end
