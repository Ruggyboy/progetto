Feature: User can change his profile information
  As a registered user
  I want to edit my profile information
  So that other users can see if they change

Scenario: Edit profile information
  Given I am an already registered user with username "aaa", email "aaa@aaa.aaa" and password "aaa@aaa.aaa"
  When I sign in with email "aaa@aaa.aaa" and password "aaa@aaa.aaa"
  When I click onto "Update profile information"
  Then I should be on the edit form page
