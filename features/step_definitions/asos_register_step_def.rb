Given("I am on the register page") do
  asos_register_page.visit_register_page
end

When(/^I input email in the email field (.*)$/) do |email|
  asos_register_page.email_field.send_keys email, :tab
end

Then(/^I receive the corresponding email error (.*)$/) do |error|
  expect(asos_register_page.check_email_error).to eq error
end

When(/^I input first name in the field (.*)$/) do |fname|
  asos_register_page.first_name_field.send_keys fname, :tab
  sleep 2
end

Then(/^I receive the corresponding first name error (.*)$/) do |error|
  expect(asos_register_page.check_fname_error).to eq error
end

When(/^I input password in the password field (.*)$/) do |pass|
  asos_register_page.password_field.send_keys pass, :tab
end

Then(/^I receive the corresponding password error (.*)$/) do |error|
  expect(asos_register_page.check_pass_error).to eq error
end
