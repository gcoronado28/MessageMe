# RSpec auth macros module.
module AuthMacros
  def signin_as(user)
    visit '/'
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Login'
  end

  def signout
    visit '/'
    find('div#account-link').click
    click_link 'Log out'
  end
end
