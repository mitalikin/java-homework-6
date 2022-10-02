Feature: Book category
  Background: I should be able to see homepage
    Given I enter URL"htpps://demo.nopcommerce.com/" in browser
    And   I am home page

    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      When I am on home page
      Then I should be able to see top menu tabs with "<categories>"
      Examples:
      |Categories       |
      |Computer         |
      |Electronic       |
      |Apparel          |
      |Digital downloads|
      |Books            |
      |Jwellery         |
      |Gift card        |

  Scenario Outline: I should be able to see Book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see "<filters>"
    Examples:
    |Filters      |
    | Short by    |
    | Display     |
    |  The Grid   |
    | List tab    |

  Scenario Outline: I should be able to see  list of terms of each filter
    Given I am on Book page
    When  I click on "<filter>"
    Then  I should be able to see "<list>" in dropdown menu
    Examples:
    |filters    |list                                                                    |
    |Sort by    | Name:A to Z,Name:Z to A,price: Low to High, Price : High to low, Created on|
    |Display    | 3,6,9                                                                      |

  Scenario Outline: I should be able to choose any filters option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And   I click on any "<option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<result>"
    Examples:
    |Filter   | Option            | Result                                                          |
    |Sort by  | Name :Ato z       |Sorted product with the product name in alphabetical order A to Z|
    |Sort by  | Name :Zto A       |Sorted product with the product name in alphabetical order Z to A|
    |Sort by  |Price : Low to High|Sorted product with the price in Descending order                |
    |Sort by  |Price : High to low|Sorted product with the price in Aescending order                |
    |Sort by  |Created on         |Recently added product should be show first                      |
    |Display  | 3                 |3 Products in a page                                             |
    |Display  | 6                 |6 products in a page                                             |
    |Display  | 9                 |9 products in a page                                             |
  Scenario Outline: I should be able to see product display format according display
                    format type as per given picture in srs document
    Given I am on book page
    When  I click on "<display format Icon>"
    Then  Ishould be able to see product display format according display format tye as per given picture in srs document
    Example:
    |Disply format Icon|
    |Grid              |
    |List              |