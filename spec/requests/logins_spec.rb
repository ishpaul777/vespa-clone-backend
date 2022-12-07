require 'rails_helper'

RSpec.describe 'Logins', type: :request do
  user = User.create(email: 'mail@example.com', password: 'password', name: 'name', role: 'user')
  url = '/login'

  describe 'Post /login' do
    it 'returns 200 when params are valid' do
      post url, params: { user: { email: user.email, password: user.password } }

      expect(response).to have_http_status(200)
      p response.body
    end

    it 'returns 401 when params are invalid' do
      post url, params: { user: { email: user.email, password: 'wrongpassword' } }

      expect(response).to have_http_status(401)
      p response.body
    end
  end
end
