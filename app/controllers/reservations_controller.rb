class ReservationsController < ApplicationController
  def index
    @reservation = Reservation.where(user_id: current_user.id)

    render json: ReservationSerializer.new(@reservation).serializable_hash[:data].map{|hash| hash[:attributes] }, status: :ok
  end

  def create
    @product = Product.find(params[:product_id])
    @reservations = Reservation.new(reservations_params)
    @reservations.user_id = current_user.id
    @reservations.product = @product

    if @reservations.save
      render json: @reservations, status: :created
    else
      render json: @reservations.errors, status: :unprocessable_entity
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:city, :reserved_date,:product_id)
  end
end

# create reservation serializer

