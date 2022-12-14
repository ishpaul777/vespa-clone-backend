class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed
  end

  def register_success
    render json: {
      status: { code: 200, message: 'Signed up successfully.' },
      data: UserSerializer.new(resource).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def register_failed
    render json:
    { status: { code: 422, message: resource.errors.full_messages } }, status: :unprocessable_entity
  end
end
