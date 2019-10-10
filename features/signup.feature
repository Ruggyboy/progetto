Feature: Sign up as a visitator
    As a visitator
    I want to sign up
    so that i can interact with website
Scenario: Sign up with valid fields
    Given i am on the signup page
    When i fill the relative fields with email "bbb@bbb.bbb" username "bbb" and password "bbb@bbb.bbb"
    And i click on the 'Create my account' button
    Then i should be redirected to my profile with email "bbb@bbb.bbb" and username "bbb"
