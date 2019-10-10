Feature: Visit Signup Page
    As a visitator
    I want to register
    so that i can interact with website
Scenario: Using valid fields
    Given i am on the homepage
    When i click on the signup button
    Then i should be redirected to the signup form page
