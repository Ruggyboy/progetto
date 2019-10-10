Given ("the login page and an already registered user {string} email {string} password {string}") do |string1, string2, string3|
        visit signup_path
        fill_in('Name',:with => string1)
        fill_in('Email', :with =>string2)
        fill_in('Password',:with => string3)
        fill_in('Confirmation', :with =>string3)
        click_link_or_button 'Create my account'
        userr = User.find_by_email(string2)
        userr.should_not be_nil
        expect(User.find(userr.id)).to eq(userr)
    visit ('http://localhost:3000')
    visit ('http://localhost:3000/login')
end
When("i put email {string} and password {string}") do |string1, string2|
    expect(page).to have_current_path('http://localhost:3000/login')
    fill_in('Email', with: string1)
    fill_in('Password', with: string2)
end
When("i click on the login button") do
    click_button('Log in')
end
Then("i should be on my user profile page and my username {string} should appear") do |string|
    expect(page).to have_content(string)
end
