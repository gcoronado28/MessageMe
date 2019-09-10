require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'Associations' do
    it 'belogs to a user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end
  end

  context 'invalid instances' do
    it 'has a blank body' do
      msg = create(:message)
      msg.body = ''
      expect(msg).to_not be_valid
    end
  end
end
