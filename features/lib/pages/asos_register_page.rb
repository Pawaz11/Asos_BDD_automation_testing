class AsosRegisterPage
  include Capybara::DSL

  EMAIL_FIELD = 'Email'
  EMAIL_ERROR = 'Email-error'

  FNAME_FIELD = 'FirstName'
  FNAME_ERROR = 'FirstName-error'

  PASSWORD = 'Password'
  PASS_ERROR = 'Password-error'

  def visit_register_page
    visit('https://my.asos.com/identity/register')
  end

  def email_field
    find_field(EMAIL_FIELD)
  end

  def check_email_error
    find(:id, EMAIL_ERROR).text
  end

  def first_name_field
    find_field(FNAME_FIELD)
  end

  def check_fname_error
    find(:id, FNAME_ERROR).text
  end

  def password_field
    find_field(PASSWORD)
  end

  def check_pass_error
    find(:id, PASS_ERROR).text
  end

end
