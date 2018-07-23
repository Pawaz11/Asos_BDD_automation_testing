require_relative 'pages/asos_home.rb'

module AsosSite

  def asos_home
    AsosHome.new
  end

  def asos_product_page
    AsosProductPage.new
  end
  
  def asos_register_page
    AsosRegisterPage.new
  end

end
