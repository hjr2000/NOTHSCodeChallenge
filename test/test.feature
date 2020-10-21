Feature: Guilded Rose Feature

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