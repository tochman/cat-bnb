Feature: Hosts can not edit each others listings

  As a Host
  In order to keep my listings intact
  I don't want any other Hosts to be able to edit my listings

  Background:
    Given these hosts exist:
      | email             | name |
      | host_a@random.com | A    |
      | host_b@random.com | B    |

    Given the following listigs exist:
      | name               | host |
      | I can take care... | A    |

  Scenario: Host A can not edit Hosts B's listing