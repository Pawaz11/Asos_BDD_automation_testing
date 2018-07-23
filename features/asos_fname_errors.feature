Feature: Validate first name
  @register
  Scenario Outline: If I leave the First Name field blank it will give me a message
  Given I am on the register page
  When I input first name in the field <fname>
  Then I receive the corresponding first name error <error>

  Examples:
  | fname | error                                   |
  | | We need your first name – it’s nicer that way |
  | Pawan. | First name must not contain <, >, &, " or . |
