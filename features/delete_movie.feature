Feature: Delete Movie
  as a User
  I want to delete a movie in the database
  
  Scenario: Go to movies
    When I go to "homepage"
    And I click on "Movies"
    Then I go to "/movies"
    
  Scenario: Delete a movie
    When I go to "homepage"
    And I click on "Movies"
    Then I go to "/movies"
    And I click on "Delete"
    Then I should see a confirmation alert
    And I click on "OK"
    Then I go to "/movies"