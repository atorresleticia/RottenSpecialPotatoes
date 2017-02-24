Feature: New User
  as a User
  I want to add a user in the database
  
  Scenario: Go to Sign Up
    When I go to "homepage"
    And I click on "Sign up now!"
    Then I go to "/signup"
    
  Scenario: Add a user
    When I go to "homepage"
    And I click on "Sign up now!"
    Then I go to "/signup"
    When I fill in "name" with "User_teste"
    And I fill in "email" with "user_teste@gmail.com"
    And I fill in "password" with "super_secret_password"
    And I press "password_confirmation" with "super_secret_password"
    And I click on "Create my account"
    Then I go to "/users/user_id"
    And I click on "Back"
    Then I should see the "homepage"
    
 