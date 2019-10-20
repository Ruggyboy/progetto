Feature: User can create a band
    As a registered user
    I want to compile the band creation form
    So that I can create a band
Scenario: Create a band
    Given I am an ordinary registered user with username "ccc", email "ccc@ccc.ccc" and password "ccc@ccc.ccc"
    And I log in with email "ccc@ccc.ccc" and password "ccc@ccc.ccc"
    When I click on the button "Become a leader"
    And I put "Band_123" as name and "via Ariosto 25" as location in the apposite fields
    And I click onto the button "Create my band"
    Then I should be redirected to the band "Band_123" profile page which shows location "via Ariosto 25"



