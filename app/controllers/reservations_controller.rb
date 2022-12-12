class ReservationsController < ApplicationController
    def index
        @Reservations = Reservation.joins(:user, :product).where('user_id' => current_user.id)
        render json: @Reservations
      end

    
      def create
        @product = Product.find(params[:id])
        @Reservation = Reservation.new(Reservation_params)
        @Reservation.user_id = current_user.id
        @Reservation.product_id = @product.id
    
        if @Reservation.save
          render json: @Reservation, status: :created
        else
          render json: @Reservation.errors, status: :unprocessable_entity
        end
      end
    
      private
    
      def Reservation_params
        params.require(:Reservation).permit(:Reservationd_date, :city)
      end
end
