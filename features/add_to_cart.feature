Feature: In order to shop on the Loblaws site users must be able to add products to their cart
  Scenario: Add product to cart
    Given I am on the Loblaws home page
    When I click on the "div" with the "class" "wrapper-our-stores"
    And I wait for "5" seconds
    And I write "M5E 1Z2" in the "enter-new-search-term" "text field"
    And I hit the "enter" key
    And I wait for "5" seconds
    And I click on the "link" with the "data-store-id" "1079"
    And I wait for "5" seconds
    And I click on the "div" with the "class" "search-button"
    And I write "apples" in the "search-bar" "text field"
    And I hit the "enter" key
    And I wait for "5" seconds
    And I click on the first "button" with the "class" "btn-add-to-cart"
    And I wait for "5" seconds
    Then the shopping cart total should show the amount from the first "span" with the "class" "reg-price"
