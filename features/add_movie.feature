Feature: New Movie
  as a User
  I want to add a movie in the database
  
  Scenario: Go to movies
    When I go to "homepage"
    And I click on "Movies"
    Then I go to "/movies"
    
  Scenario: Add a movie
    When I go to "homepage"
    And I click on "Movies"
    Then I go to "/movies"
    And I click on "Add new movie"
    Then I go to "/movies/new"
    Given I am on a form page
    When I fill in "name" with "Teste"
    And I fill in "rating" with "5"
    And I fill in "user_id" with "1"
    And I press "Add movie"
    Then I go to "/movies/movie_id"
    And I click on "Back"
    Then I should see the "Teste" at "Movies"
    
 