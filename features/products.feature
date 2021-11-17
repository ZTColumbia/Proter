Feature: management page for products works well
  In order to manage products in pages
  As the web manager
  I want to ensure every function is right in the management page
  
  Background: products have been added to database
  Given the following products exist:
  | name       |brand    |price |weight|color|discount|category|box              |
  | armchair   | Ikea    | 150  |24    |Black|0       |home    |12x14x21         |
  | TV table   | No1     | 270  |25    |White|0       |home    |12x14x21         |
  | cook       | Jiahua  | 237  |53    |White|0       |children|12x14x21         |
  | desk       | Chaz    | 134  |25    |Black|0       |home    |12x14x21         |
  | lamp       | Mints   | 463  |64    |Beige|10      |children|12x14x21         |
  | bookshelf  | Bronzs  | 142  |26    |White|0       |home    |12x14x21         |
  | lamp shelf | Henz    | 616  |36    |Beige|5       |children|12x14x21         |
  | dish table | Beyonds | 176  |32    |Black|0       |home    |12x14x21         |
  | chair      | Lucys   | 542  |57    |White|0       |home    |12x14x21         |
  | mirror     | G'mol   | 214  |23    |Black|0       |home    |12x14x21         |
  
Scenario: Create a new product
    Given I am on the products page
    Then I should see "Porter"
    And I should see "All Products"
    When  I follow "Add new product"
    And  I fill in "Name" with "new_for_testing"
    And I fill in "Price" with "30"
    And  I press "Save Changes"
    Then I am on the home page
    And I should see "new_for_testing"

Scenario: View the detail page, and back to main page
    Given I am on the details page for "cook"
    Then I should see "Details about cook"
    And I should see "Jiahua"
    And I should see "237"
    And I should see "53"
    And I should see "White"
    And I should see "0"
    And I should see "children"
    And I should see "12x14x21"
    When I follow "Back"
    Then I am on the products page