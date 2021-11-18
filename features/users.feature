Feature: user management works well
    As a user, I am able to signup,to signin
    This file is to test register/login function

Scenario: Signup as a new user,sign in, and then sign out
    Given I am on the signup page
    Then I should see "Sign up"
    When  I fill in "First name" with "new_first_for_testing"
    And I fill in "Last name" with "new_last_for_testing"
    And I fill in "Password" with "new_Password_for_testing"
    And I fill in "Email" with "new_Email_for_testing@Email.com"
    And I fill in "City" with "new_City_for_testing"
    And I fill in "State" with "new_State_for_testing"
    And I fill in "Address" with "new_Address_for_testing"
    And I fill in "Card number" with "000000000000"
    And I fill in "Card cvv" with "123"
    And I fill in "Card expired date" with "11.3.2021"
    And I press "Sign up"
    Then I should see "new_email_for_testing@email.com"
    And I am on the home page
    When I follow "Sign out"
    Then I am on the home page
    And I should see "Please sign in"
    And I should not see "new_email_for_testing@email.com"
    
Scenario: Forget password & reset
    Given I am on the home page
    And I follow "sign in"
    Then I am on the signin page
    Then I should see "Forgot password?"
    When I follow "Forgot password?"
    Then I am on the new password page
    And I should see "Reset your password"
    When I fill in "Email address" with "new_Email_for_testing@Email.com"
    And I press "Reset password"
    Then I should see "You will receive an email "

Scenario: login use wrong email or password
    Given I am on the signin page
    When I fill in "Email" with "new_Email_for_testing@Email.com"
    And I fill in "Password" with "Wrongones"
    And I press "Sign in"
    Then I should see "Bad email or password"
    
Scenario: signed in users change password
    Given I have signed in
    And I am on the password_edit page for "new_email_for_testing@email.com"
    And I should see "Reset your password"
    And I should see "To be emailed a link to reset your password"
    When I fill in "Email" with "new_Email2_for_testing@Email.com"
    And I press "Reset password"
    Then I should see "You will receive an email " 
    
Scenario: View profile and edit profile
    Given I have signed in
    And I am on the home page
    When I follow "Profile"
    Then I am on the profile page for "new_Email_for_testing@Email.com"
    Then I should see "Details about"
    When I follow "Edit"
    Then I am on the profile edit page for "new_Email_for_testing@Email.com"
    And I should see "Edit Existing User"
    When I fill in "first name" with "new_name"
    And I press "Save Changes"
    Then I am on the home page
    When I follow "Profile"
    Then I should see "new_name"
    
    
    
    

