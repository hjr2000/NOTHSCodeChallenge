Feature: Typical Items

  @Runme
  Scenario Outline: Typical Items Test
    Given I have a typical item
    And this item has an initial quality value of <Initial Quality>
    And a Sell In value of <Sell In>
    When we have reached <Days In> of the listing being live
    Then the final quality value is <Final Quality Value>

    Examples:
      | Initial Quality | Sell In  | Days In  | Final Quality Value |
      |    10           |   5      |    1     |     10              |
      |    10           |   5      |    3     |     8               |
      |    10           |   5      |    5     |     6               |
      |    10           |   5      |    6     |     4               |
      |    10           |   5      |    7     |     2               |
      |    10           |   5      |    8     |     0               |
      |    10           |   5      |   200    |     0               |
      |    50           |   5      |    1     |     50              |
      |    50           |   5      |    2     |     49              |
      |    50           |   5      |   100    |      0              |
      |     1           |   5      |    1     |      1              |
      |     1           |   5      |    2     |      0              |
      |     1           |   1      |    2     |      0              |
      |     3           |   1      |    3     |      0              |
      |     4           |   1      |    3     |      0              |
      |    10           |  10      |   10     |      1              |
      |     9           |  10      |   10     |      0              |
      |     9           |   5      |   10     |      0              |