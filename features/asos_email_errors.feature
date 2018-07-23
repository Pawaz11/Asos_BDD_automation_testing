Feature: Validate Email
  @register
  Scenario Outline: If I leave email field blank it will give me a message
  Given I am on the register page
  When I input email in the email field <email>
  Then I receive the corresponding email error <error>

    Examples:
    | email | error |
    | | Oops! You need to type your email here |
    | pawan | Email fail! Please type in your correct email address |
