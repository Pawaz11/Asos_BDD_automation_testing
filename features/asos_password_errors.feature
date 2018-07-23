Feature: Validate Password
  @register
  Scenario Outline: Check invalid password error messages
  Given I am on the register page
  When I input password in the password field <pass>
  Then I receive the corresponding password error <error>

    Examples:
    | pass | error |
    | | Hey, we need a password here |
    | pawan | At least 6 letters and 1 number, please! |
