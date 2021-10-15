Feature: Buy products
    As a customer
    I want to buy products

Background:
    Given a product "Bread" with price 20.50 exists has 3 items
    And a product "Jam" with price 80.00 exists has 2 items
    And a product "Candy" with price 10.00 exists has 10 items

Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00

Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00

Scenario: Buy three products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    And I buy "Candy" with quantity 5
    Then total should be 171.00

Scenario: Buy products over quantity
    When I buy "Bread" over quantity 8
    And I buy "Jam" with quantity 1
    Then total should be 80.00
