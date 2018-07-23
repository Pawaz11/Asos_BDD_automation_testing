Feature: ASOS search and add to basket

  Scenario: Searching for a product and viewing it
  Given I access the ASOS homepage
  And I make a search query
  When I click on a product
  Then The product details page should appear

  Scenario: Adding a product to the basket succesfully
  Given I am on the product page
  And I have selected the size
  When I click on the add to bag
  Then The product should be added to the bag
