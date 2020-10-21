Feature: Aged Brie Items

  @Runme
  Scenario Outline: Aged Brie Items Test
    Given I have an Aged Brie item
    And this item has an initial quality value of <Initial Quality>
    And a Sell In value of <Sell In>
    When we have reached <Days In> of the listing being live
    Then the final quality value is <Final Quality Value>

    Examples:
      | Initial Quality | Sell In  | Days In  | Final Quality Value |
      |    20           |   0      |    1     |     20              |
      |    10           |   0      |    3     |     12              |
      |    45           |   0      |    5     |     49              |
      |    45           |   0      |    6     |     50              |
      |    10           |   0      |   2000   |     50              |
