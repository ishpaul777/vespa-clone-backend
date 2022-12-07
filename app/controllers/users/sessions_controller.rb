class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    # if the user exists and the password is correct
    if resource.persisted?
      render json: {
        status: { code: 200, message: 'Signed in successfully.' },
        # data should be the user's data with the role, name, email, etc.
        data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
      }, status: :ok
    else
      render json: {
        status: { code: 401, message: 'Could not authenticate user.' }
      }, status: :unauthorized
    end
  end

  def respond_to_on_destroy
    if current_user
      render json: {
        status: { code: 200, message: 'Signed out successfully.' }
      }, status: :ok
    else
      render json: {
        status: { code: 401, message: 'Could not authenticate user.' }
      }, status: :unauthorized
    end
  end
end
