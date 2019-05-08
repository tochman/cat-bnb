@javascript
Feature: Hosts can not edit each others listings

  As a Host
  In order to keep my listings intact
  I don't want any other Hosts to be able to edit my listings

  Background:
    Given these cat owners exist:
      | email              |
      | owner_a@random.com |
      | owner_b@random.com |

    Given the following listings exist:
      | name                           | owner              |
      | Please take care of Fluffy     | owner_a@random.com |
      | Leif needs to be taken care of | owner_b@random.com |

  Scenario: Owner A can not edit Owner B's listing
    Given "owner_a@random.com" is logged in
    And visits the edit page for "Leif needs to be taken care of"
    Then she should see "You are NOT allowed to edit this listing"