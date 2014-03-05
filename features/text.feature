Feature: Markdown

  Scenario: Render italic text
    Given the following Markdown text
      """
      This is an _italic text_.
      """
    When I try to convert it to HTML
    Then I should see the output "<em>italic text</em>"
