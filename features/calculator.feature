Feature: Calculator
  In order to keep my brain from melting
  As a regular user
  I want to have a calculator to help me

  Background:
    Given I have a calculator

  Scenario: Add two numbers
    When I add 2 and 3
    Then the result should be 5

  Scenario: Multiply two numbers
    When I multiply 2 and 3
    Then the result should be 6

  Scenario Outline: Subtract two numbers
    When I subtract <number1> and <number2>
    Then the result should be <result>

    Examples:
      | number1  | number2 | result |
      | 9        | 2       | 7      |
      | 15       | 10      | 5      |

  @wip
  Scenario: Dividing two numbers
    When I divide 9 by 3
    Then the result should be 3
