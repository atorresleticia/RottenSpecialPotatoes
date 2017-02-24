Feature: Movie info
  as a User
  I want to see the info of a movie from the database
  
  Scenario: Go to movies
    When I go to "homepage"
    And I click on "Movies"
    Then I go to "/movies"
    
  Scenario: See a movie info
    When I go to "homepage"
    And I click on "Movies"
    Then I go to "/movies"
    And I click on "More"
    Then I go to "/movies/movie_id"
    Then I should see the movie "name"
    Then I should see the movie "rating"
    Then I should see the movie "description"
    And I click on "Back"
    Then I go to "/movies"