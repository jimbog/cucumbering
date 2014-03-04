Feature: Calculator
  In order to keep my brain from melting
  As a regular user
  I want to have a calculator to help me

  Scenario: Add two numbers
    Given I have a calculator
    When I add 2 and 3
    Then the result should be 5
