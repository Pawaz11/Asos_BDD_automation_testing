class AsosProductPage
  include Capybara::DSL

  SIZE = 'W40in L30in'
  ADD_TO_BAG = ".add-button"
  BAG = 'span._1EbtfBz'

  def visit_product_page
    visit(current_url)
  end

  def select_size
    page.find('option', text: SIZE).click
  end

  def click_add_to_bag
    first(ADD_TO_BAG).click
  end

  def check_bag
    find(BAG).text
  end

end
