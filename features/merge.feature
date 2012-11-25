Feature: Merge
  As an admin
  In order to not have duplicate articles
  I want to merge articles
  
  Background
  	Given the blog is set up
  	And I have already written two articles
  
  
  Scenario: When articles are merged, the merged article should contain the text of both previous articles
  	Given I am logged in as an admin
    And I am on the edit page of article
    Then I should see the merge form
  
  Scenario: A non-admin cannot merge two articles
  	Given I am logged as a an author
  	And I am on the edit page of article
  	Then I should not see the merge form