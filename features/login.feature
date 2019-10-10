Feature: Login as a registered user
    As a registered user
    I want to log in
    so that i can interact again with the website
Scenario: Using valid fields
    Given the login page and an already registered user "aaa" email "aaa@aaa.aaa" password "aaa@aaa.aaa"
    When i put email "aaa@aaa.aaa" and password "aaa@aaa.aaa"
    And i click on the login button
    Then i should be on my user profile page and my username "aaa" should appear
