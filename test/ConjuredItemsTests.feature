Feature: Conjured Items

  @Runme
  Scenario Outline: Conjured Items Test
    Given I have a Conjured item
    And this item has an initial quality value of <Initial Quality>
    And a Sell In value of <Sell In>
    When we have reached <Days In> of the listing being live
    Then the final quality value is <Final Quality Value>

    Examples:
      | Initial Quality | Sell In  | Days In  | Final Quality Value |
      |    20           |   5      |    1     |     20              |
      |    20           |   4      |    3     |     16              |
      |    20           |   4      |    4     |     14              |
      |    20           |   4      |    5     |     10              |
      |    20           |   4      |    6     |      6              |
      |    20           |   4      |    7     |      2              |
      |    20           |   4      |    8     |      0              |
      |     2           |   1      |    4     |      0              |
      |     2           |   1      |    2     |      0              |