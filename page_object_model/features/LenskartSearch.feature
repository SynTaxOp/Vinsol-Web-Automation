Feature: Lenskart Search

  Scenario Outline: Shopping on Lenskart
    Given a user goes to LensKart home page
    When user searches for <search_keyword>
    Then site should return result for <search_keyword>
    Then Open the first found item

    Examples:
      | search_keyword |
      | Vincent Chase|
      | Aviator |