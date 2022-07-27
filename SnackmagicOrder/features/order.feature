Feature: Snackmagic Order Testing
  Scenario: To place order on Snackmagic
    Given I m on Snackmagic Login page
    When Clicked Login button
    When Entered Login credentials and press login button
    Then Start a new order
    Then Enter order details
    Then Customize your order
    Then I proceed to complete the payment