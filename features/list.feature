Feature: List of elements

  Scenario: Find an element
    Given I have the following elements
      | id | name  |
      | 1  | Bob   |
      | 2  | Alice |
      | 3  | Jeff  |
    When I find an element with id 1
    Then I should get Bob
