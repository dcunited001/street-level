@sponsors
Feature: Sponsors
  In order to have sponsors on my website
  As an administrator
  I want to manage sponsors

  Background:
    Given I am a logged in refinery user
    And I have no sponsors

  @sponsors-list @list
  Scenario: Sponsors List
   Given I have sponsors titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of sponsors
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @sponsors-valid @valid
  Scenario: Create Valid Sponsor
    When I go to the list of sponsors
    And I follow "Add New Sponsor"
    And I fill in "Name" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 sponsor

  @sponsors-invalid @invalid
  Scenario: Create Invalid Sponsor (without name)
    When I go to the list of sponsors
    And I follow "Add New Sponsor"
    And I press "Save"
    Then I should see "Name can't be blank"
    And I should have 0 sponsors

  @sponsors-edit @edit
  Scenario: Edit Existing Sponsor
    Given I have sponsors titled "A name"
    When I go to the list of sponsors
    And I follow "Edit this sponsor" within ".actions"
    Then I fill in "Name" with "A different name"
    And I press "Save"
    Then I should see "'A different name' was successfully updated."
    And I should be on the list of sponsors
    And I should not see "A name"

  @sponsors-duplicate @duplicate
  Scenario: Create Duplicate Sponsor
    Given I only have sponsors titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of sponsors
    And I follow "Add New Sponsor"
    And I fill in "Name" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 sponsors

  @sponsors-delete @delete
  Scenario: Delete Sponsor
    Given I only have sponsors titled UniqueTitleOne
    When I go to the list of sponsors
    And I follow "Remove this sponsor forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 sponsors
 