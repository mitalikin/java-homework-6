Feature: Demo Nopcommerce's Top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce Top menu
  Background:  User is on given URL
  When User type URL https://demo.nopcommerce.com
  And  User click on enter button
  Then User is on given URL

 Scenario:Verify that user can navigate to Books category
   When User on given URL
   And  Click on Books tab on Top Menu
   Then User is navigated to Books Category page

  Scenario:Verify that user can see the Books category page with filters and list of products
    When User on given URL
    And  Click on Books tab on Top Menu
    And  Check Filters and LIst Tab
    Then Books category page is displayed with filters and list tabs

  Scenario:Verify that user can see 'Sort by' filter on Books category page
    When User is on Books Category page
    And  Click on Books Category page
    And  Check 'sort by' filter is present
    Then 'Sort by' filter is available on Book category page

  Scenario:Verify that user can see 'Display' filter on Books category page
    When User is on Books Category page
    And  Click on Books Category page
    And  Check 'Display' filter is present
    Then 'Display' filter is available on Book category page

  Scenario:Verify that user can see 'Grid' tab on Books category page
    When User is on Books Category page
    And  Click on Books Category page
    And  Check 'Grid' tab is present
    Then 'Grid' tab is available on Book category page

  Scenario:Verify that user can see 'List' tab on Books category page
    When User is on Books Category page
    And  Click on Books Category page
    And  Check 'List' tab is present
    Then 'List' tab' is available on Book category page

  Scenario:Verify that user can see 'Name:A to Z' selection is present in 'Sort by' filter
    When User is on Books Category page
    And  Click on Books Category page
    And  Check 'Sort by' filter
    And  Check that 'Name: A to Z' selection is present
    Then 'Name: A to Z' selection is present in 'Sort by' filter

  Scenario:Verify that user can see 'Name:A to Z' filter is functioning as expected \\ products are filtered in alphabetical order
    When User is on Books Category page
    And  Click on Books Category page
    And  Click on 'Sort by' filter
    And  Select 'Name: A to Z' filter
    Then all products are displayed in alphabetical order

  Scenario:Verify that user can see 'Name:A to Z' is first option in 'Sort by' filter
    When User is on Books Category page
    And  Click on Books Category page
    And  Check 'Sort by' filter
    And  Check that 'Name: A to Z' is first in order
    Then 'Name: A to Z'is first option in order















