@AutomationPractice
Feature: Acceptance Testing to validate the user login and shopping cart functionality

#  @login
#  Scenario Outline: Validate the login functionality of Automation Practice
#    Given the user is on the home page "http://automationpractice.com/index.php"
#    When the user clicks on the "SignIn" button
#    And the user enters the "emailaddress" under "<emailaddress>" field
#    And the user enters the "password" under "<password>" field
#    And the user clicks on the "Submit" button
#    Then the user should see the corresponding "<message>"
#
#     Examples:
#      | emailaddress           | password               | message         |
#      | mskumar0918@gmail.com  | Helloworld1234         | Successful      |
#      | mskumar0918@gmail.com  | Helloworld12345        | InvalidPassword |
#      | mskumar09181@gmail.com | Helloworld12345        | InvalidEmail    |
#      | mskumar0918@gmail.com  |                        | BlankPassword   |
#      |                        | Helloworld12345        | BlankEmail      |
#      | mskumar09181@gmail.com | Helloworld12345        | InvalidDetails  |
#      |                        |                        | BlankDetails    |

  @shopping
  Scenario Outline: To verify the basic functionality of add to cart for "<dress name>"
    Given the user is on the home page "http://automationpractice.com/index.php"
    When the user logs into the application successfully with "mskumar0918@gmail.com" and "Helloworld1234"
    And the user clicks on the "Women" button
    And the user chooses the products with desired details "<dress name>", "<quantity>", "<size>"
    And the user clicks on the "cart" button
    Then the user can see the Shopping-Cart "Your shopping cart" form with valid information
#
  Examples:
    | dress name                          | quantity | size  |
    | Faded Short Sleeve T-shirts, Blouse | 1, 5     | S, L  |
    | Blouse                              | 2        | S     |

