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
    Given I am on the home page
    When  I follow "Add new product"
    And  I fill in "Name" with "new_for_testing"
    And I fill in "Price" with "30"
    And  I press "Save Changes"
    Then I am on the home page
    And I should see "new_for_testing"
Scenario: View the default page
    Given I am on the home page
    Then I should see "Porter"
    And I should see "All Products"

Scenario: View the detail page, and back to main page
    Given I am on the details page for "cook"
    Then I should see "Details about"
    And I should see "White"
    And I should see "Edit"
    And I should see "Delete"
    And I should see "Back to product list"
    When I follow "Back to product list"
    Then I am on the home page
    
Scenario: Use edit function in the detail page
Given I am on the details page for "cook"
When I follow "Edit"
Then I should see "Edit Existing Product"
When  I fill in "Brand" with "new_brand_for_testing"
And  I press "Save Changes"
Then I am on the home page
And I should see "new_brand_for_testing"

Scenario: Use delete in the detail page
Given I am on the details page for "cook"
When I follow "Delete"
Then I am on the home page
And I should not see "cook"

Scenario: add an item to cart in the detail page
Given I am on the details page for "cook"
When I follow "Add one to cart"
Then I should see "You buy product"