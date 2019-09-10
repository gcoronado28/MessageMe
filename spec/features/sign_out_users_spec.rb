require 'rails_helper'

RSpec.feature 'Sign out users' do
  scenario 'When valid process' do
    user = create(:user)
    signin_as(user)
    signout
    expect(page).to have_content('You have successfuly logged out')
  end
end
