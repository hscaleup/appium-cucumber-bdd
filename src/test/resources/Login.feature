@test
Feature: Login scenarios

  Scenario: Verify user open apps
    Given that the user launches the BASRON application on the mobile
    When the user clicks on Login button
    Then the sign in screen displayed

  Scenario Outline: Login with valid user name and password
    Given that the user launches the BASRON application on the mobile
    When the user clicks on Login button
   And user enters username as "<username>"
    And user enters password as "<password>"
    Then user clicks on Login button after entering data
    Examples:
      | username | password |
      | sagar.basrom@yopmail.com | Test@1234 |

#  Scenario Outline: Verification of Admin Dashboard
#    Given that user is on the Dashboard
#    When the user verify the list
#    Then user sees requests
#    And user seees the option to historical requests
##    And user sees the option to trigger the reconciliation
#    Examples:
#      | username | password |
#      | abc@gmail.com | test1234 |

  Scenario: Verify the Forget password screen for the Admin user
    Given that the user is on the Sign in screen
    When the user selects  forgot password hyper link
    Then Reset your password screen is displayed
    Then user id field is displayed
    And the user id field is enabled
    And Recover button is displayed
    And Recover button is enabled
    And Back option is displayed
    And Back option is enabled

  Scenario: Verify the Admin Dashboard
    Given that the user is on the Dashboard
    When the user verify the list
    Then the user sees requests
    And the user sees the option to historical requests
    And the user sees the option to trigger the reconciliation

  Scenario:Verify Admin request details
    Given that the user is on the Dashboard
    When the user selects a request
    Then the user sees request details
    And the option accept the request
    And the option to reject the request

  Scenario:Verify Admin is able to reject the request
    Given that the user is on the Dashboard
    And the user selects a request in the request list
    And the user sees request details
    When the user selects to reject the request
    Then the request details get closed
    And the rejected request disappears from the request list
    And the rejected request appears in the historical request list
    And the status of the request is displayed as rejected

  Scenario:Verify Admin is able to accept the request
    Given that the user is on the Dashboard
    And the user selects a request in the request list
    And the user sees request details
    When the user selects to accept the request
    Then the request details get closed
    And the rejected request disappears from the request list
    And the rejected request appears in the historical request list
    And the status of the request is displayed as accepted

  Scenario: Verify Admin is able to trigger the reconciliation job
    Given that the user is on the Dashboard
    And the user navigates to the screen to trigger the reconciliation job
    And the option to trigger the reconciliation job is displayed
    And option to trigger the reconciliation job is in enabled status
    When the user triggers the reconciliation job
    Then the reconciliation job starts running
    And option to trigger the reconciliation job is goes into disabled status






