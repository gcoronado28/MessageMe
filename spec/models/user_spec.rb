require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Associations' do
    it 'has many messages' do
      association = described_class.reflect_on_association(:messages).macro
      expect(association).to eq :has_many
    end
  end
end
