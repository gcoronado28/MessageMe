require 'rails_helper'

RSpec.feature 'Send messages' do
  scenario 'properly' do
    user = create(:user)
    signin_as user
    msg = create(:message, user: user)
    fill_in 'message_body', with: msg.body
    expect { click_button('button') }.to change(Message, :count).by(1)
    expect(page).to have_text(msg.user.username)
    expect(page).to have_text(msg.body)
  end
end
