require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject = User.create(name: 'user', email: 'user@example.com', password: 'password')
    before { subject.save }

    it 'check if amount is equal or greater than one' do
      expect(subject.name).to eq('user')
    end
  end
end
