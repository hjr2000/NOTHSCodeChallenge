Feature: Backstage Pass Items

  @Runme
  Scenario Outline: Backstage Pass Items Test
    Given I have a Backstage Pass item
    And this item has an initial quality value of <Initial Quality>
    And a Sell In value of <Sell In>
    When we have reached <Days In> of the listing being live
    Then the final quality value is <Final Quality Value>

    Examples:
      | Initial Quality | Sell In  | Days In  | Final Quality Value |
      |    10           |   15     |    1     |     10              |
      |    10           |   15     |    3     |     12              |
      |    10           |   15     |    5     |     14              |
      |    10           |   15     |    6     |     16              |
      |    10           |   15     |    8     |     20              |
      |    10           |   15     |   10     |     24              |
      |    10           |   15     |   11     |     27              |
      |    10           |   15     |   12     |     30              |
      |    10           |   15     |   13     |     33              |
      |    10           |   15     |   15     |     39              |
      |    10           |   15     |   16     |      0              |
      |    10           |   15     |   50     |      0              |
      |    10           |   30     |   30     |     50              |
      |    45           |   30     |   30     |     50              |