Feature: management page for stores works well
  In order to buy products in pages
  As the web manager
  I want to ensure every function is right in this page
  
  Background: products have been added to database, user has signed in
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
  Given the user sign in:
  
Scenario: View the default page
    Given I am on the home page
    Then I should see "Porter"
    And I should see "All Products"
    
Scenario: View the detail page
    Given I am on the home page
    When  I follow "Buy armchair"
    Then I am on the buy page for "armchair"
    And I should see "Description:"

Scenario: Add products to cart
    Given I am on the buy page for "armchair"
    When I follow "Add to Cart"
    Then I am on the cart page
    And I should see "armchair"
    
Scenario: Back to main page
Given I am on the buy page for "armchair"
When I follow "Back to Products"
Then I am on the home page