

Feature: Login scenarios

  Scenario: Verify user open BASRON Customer app
    Given that the user launches the BASRON application on the mobile
    When the user clicks on Login button
    Then the sign in screen displayed


  Scenario Outline: BASRON customer enters Login details
    Given that the user launches the BASRON application on the mobile
    When the user clicks on Login button
    And user enters username as "<username>"
    And user enters password as "<password>"
    Then user clicks on Login button after entering data
    Examples:
      | username | password |
      | sagar.basrom@yopmail.com | Test@1234 |

  Scenario: Verify the customer sign up screen
    Given that the user is on the sign in screen
    When the user selects SIGNUP option then
    Then user id field is displayed
    And the user id field is enabled
    And the password field is displayed
    And the password field is enabled
    And the Confirm password field is displayed
    And the Confirm password field is read only
    And link to Term of services is displayed
    And the Term of services hyper link is not broken
    And check box of Term of services is displayed
    And check box of Term of services is editable
    And forgot password hyper link is displayed
    And the hyper link is not broken
    And Login button is displayed
    And Login button is enabled
    And SIGN UP button is displayed
    And SIGN UP button is enabled


  Scenario Outline: Verify successful reconciliation of the customer data
    Given that the user has selected a transaction and is on the edit request screen
    And the customer edits the first name as "<editFirstName>"
    And the customer edits the last name as "<editLastName>"
    And the customer edits the account number as "<accountnumber>"
    And the customer edits the pin code as "<pincode>"
    And the customer submits the request
    And the Admin accepts the request
    And the Admin triggers the reconciliation job
    And the reconciliation job is successful
    And the customer refreshes dashboard
    And the customer reopens the transaction for which the request was been raised
    When the customer reviews the details
    Then the customer sees the updated first name
    And the customer sees the updated last name
    And the customer sees the updated account number
    And the customer sees the updated pin code

    Examples:
      | editFirstName | editLastName | accountnumber |pincode|
      | editedfname | Test@editedlname | editedaccno |editedpincode|

  Scenario:Verify the Forget password screen for the Customer user
    Given that the user is on the Sign in screen
    When the user selects  forgot password hyper link
    Then Reset your password screen is displayed
    Then user id field is displayed
    And the user id field is enabled
    And Recover button is displayed
    And Recover button is enabled
    And Back option is displayed
    And Back option is enabled

  Scenario:Verify the Customer Dashboard
    Given that the user is on the Dashboard
    When the user verify the list
    Then the user sees transactions
    Then the user sees the option to historical requests



