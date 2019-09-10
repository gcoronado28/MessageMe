require 'rails_helper'

RSpec.feature 'Users who sign in' do
  scenario 'With valid credentials' do
    user = create(:user)
    signin_as(user)
    expect(page).to have_content('You have successfuly logged in')
    expect(page).to have_content('Say something')
  end

  scenario 'With invalid credentials' do
    user = create(:user)
    user.username = ''
    signin_as(user)
    expect(page).to have_content('There was something wrong')
  end

  scenario 'More than once' do
    user = create(:user)
    signin_as user
    visit '/login'
    expect(page).to have_content('You are already logged in')
  end
end
