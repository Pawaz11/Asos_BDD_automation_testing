class AsosHome
  include Capybara::DSL

  def visit_homepage
    visit('/')
  end

  def search_product query
    fill_in('chrome-search', with: query)
  end

  def click_search
    click_button('Search')
  end

  def click_product id
    click_on(id)
  end

end
