Feature: User can update his band information
    As a leader user
    I want to update my band information
    So other users can see if they change
Scenario: Update band information
    Given I am an ordinary registered user with username "ddd", password "ddd@ddd.ddd" and email "ddd@ddd.ddd"
    And I log in with password "ddd@ddd.ddd" and email "ddd@ddd.ddd"
    And I create a band called "Band_456" with "via Eudossiana 18" as location
    When I click onto the "Change band info" button
    And I fill the name field with "Band_789" and the location field with "via Scarpa"
    And I click onto "Save changes" button
    Then I should be redirected to the band profile page which shows "Band_789" as name and "via Scarpa" as location
