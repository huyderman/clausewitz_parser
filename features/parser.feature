Feature: Parser
  In order to manipulate Clausewitz data files
  As an game modder
  I want to be able to parse them to Ruby data structures

  Scenario: Parse Triggered Modifiers
    Given triggered_modifiers.txt
    When I parse the file
    Then there should be 1 item
    And the key of entry 0 should be 'negative_money'

  Scenario: Parse Religions
    Given 00_religions.txt
    When I parse the file
    Then the key of entry 0 should be 'christian'
    And the key of entry 1 should be 'muslim'

  Scenario: Parse Minor Titles
    Given 00_minor_titles.txt
    When I parse the file
    Then the key of entry 0 should be 'title_regent'
    And the key of entry 1 should be 'title_ruler_consort'