require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'Reservation model' do
    subject = Reservation.create(city: 'Moz', reserved_date: '01-06-2022', user_id: 1, product_id: 1)
    before { subject.save }

    it 'check the city present' do
      subject.city = nil
      expect(subject).to_not be_valid
    end

    it 'check the reserved_date is present' do
      subject.reserved_date = nil
      expect(subject).to_not be_valid
    end
  end
end
