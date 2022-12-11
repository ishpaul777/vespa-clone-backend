class ReservesController < ApplicationController

    def index
        @reserves = Reserve.joins(:user, :product).where('user_id' => current_user.id)
        render json: @reserves
     end
    
      def create    
        @product = Product.find(params[:id])
        @reserve = Reserve.new(reserve_params)
        @reserve.user_id = current_user.id
        @reserve.product_id = @product.id
    
        if @reserve.save
          render json: @reserve, status: :created
        else
          render json: @reserve.errors, status: :unprocessable_entity
        end
      end
    
      private
    
      def reserve_params
        params.require(:reserve).permit(:reserved_date, :city)
      end

end
