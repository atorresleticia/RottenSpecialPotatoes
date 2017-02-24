Feature: Index movie
  As a User
  I want to see a list of movies
  
  Scenario: Go to homepage
    When I go to "homepage"
    And I click on "Movies"
    Then I go to "/movies"
    Then I should see a list of movies