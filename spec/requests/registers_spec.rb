require 'rails_helper'

RSpec.describe 'Registers', type: :request do
  describe 'Post /signup' do
    it 'returns 200 when params are valid' do
      post user_registration_path,
           params: { user: { email: 'test@test.com', password: '123456', password_confirmation: '123456' } }

      expect(response).to have_http_status(200)
    end

    it 'returns 422 when user already exists' do
      user = User.create(email: 'test@test.com', password: '123456', password_confirmation: '123456')

      post user_registration_path,
           params: { user: { email: user.email, password: user.password,
                             password_confirmation: user.password_confirmation } }
      expect(response).to have_http_status(422)
    end

    it 'returns 422 when params are invalid' do
      post user_registration_path,
           params: { user: { email: 'test@test.com', password: '123456', password_confirmation: '1234567' } }

      expect(response).to have_http_status(422)
    end
  end
end
