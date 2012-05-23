Feature: Create Book
  In Order to add books to the catalog
  I want to create books registers

  Scenario: Create book
    Given I am on the new book page
    When I fill book form with "Foo" book data
    And I submit book form
    Then "Foo" book should been created
