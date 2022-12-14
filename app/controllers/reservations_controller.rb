class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.joins(:user, :product).where('user_id' => current_user.id)
    render json: @reservations
  end

  def create
    @product = Product.find(params[:product_id])
    @reservations = Reservation.new(reservations_params)
    @reservations.user_id = current_user.id
    @reservations.product_id = @product.id

    if @reservations.save
      render json: @reservations, status: :created
    else
      render json: @reservations.errors, status: :unprocessable_entity
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:reserved_date, :city)
  end
end
