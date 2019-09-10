require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Associations' do
    it 'has many messages' do
      association = described_class.reflect_on_association(:messages).macro
      expect(association).to eq :has_many
    end
  end

  context 'invalid instances' do
    it 'has a blank username' do
      user = create(:user)
      user.username = ''
      expect(user).to_not be_valid
    end

    it 'has a too short username' do
      user = create(:user)
      user.username = 'hi'
      expect(user).to_not be_valid
    end

    it 'has a too long username' do
      user = create(:user)
      user.username = 'pneumonoultramicroscopicsilicovolcanoconiosis'
      expect(user).to_not be_valid
    end
  end
end
