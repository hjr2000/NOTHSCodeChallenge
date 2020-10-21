Feature: Sulfuras Items

  @Runme
  Scenario Outline: Sulfuras Items Test
    Given I have a Sulfuras item
    And this item has an initial quality value of <Initial Quality>
    And a Sell In value of <Sell In>
    When we have reached <Days In> of the listing being live
    Then the final quality value is <Final Quality Value>

    Examples:
      | Initial Quality | Sell In  | Days In  | Final Quality Value |
      |    80           |   0      |    1     |     80              |
      |    80           |   0      |    5     |     80              |
      |    80           |   0      |   100    |     80              |