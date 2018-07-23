PAGE_URL = "http://www.asos.com/asos/asos-design-plus-super-skinny-jeans-in-bleach-wash/prd/9463313?clr=bleachblue&SearchQuery=jeans&gridcolumn=1&gridrow=7&gridsize=4&pge=1&pgesize=72&totalstyles=5423"

PRODUCT = 'ASOS DESIGN Plus super skinny jeans in bleach wash'

Given("I access the ASOS homepage") do
  asos_home.visit_homepage
  expect(current_url).to eq 'http://www.asos.com/'
end

Given("I make a search query") do
  asos_home.search_product 'Jeans'
  asos_home.click_search
end

When("I click on a product") do
  asos_home.click_product(PRODUCT)
end

Then("The product details page should appear") do
  expect(current_url).to eq PAGE_URL
end

Given("I am on the product page") do
  current_url == PAGE_URL
end

Given("I have selected the size") do
  asos_home.visit_homepage
  asos_home.search_product 'Jeans'
  asos_home.click_search
  asos_home.click_product(PRODUCT)
  asos_product_page.select_size
end

When("I click on the add to bag") do
  asos_product_page.click_add_to_bag
end

Then("The product should be added to the bag") do
  expect(asos_product_page.check_bag).to eq "1"
end
