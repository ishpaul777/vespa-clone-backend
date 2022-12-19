require 'rails_helper'

RSpec.describe 'Products', type: :request do
  include Devise::Test::IntegrationHelpers

  let(:user) { User.create(email: 'mail@example.com', password: 'password', name: 'name', role: 'user') }
  let(:product) { Product.create(model: 'vespa', color: 'blue', description: 'vespa', price: 200, user_id: user.id) }
  let(:reserve) { Reservation.create(city: 'Moz', reserved_date: '01-06-2022', user_id: user.id, product_id: product.id) }

  describe 'GET /new' do
    before do
      sign_in user
      get reservations_path
    end

    it 'should return status correct (ok)' do
      expect(response).to have_http_status('200')
    end

  end
end
