class OrdersController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @order = @user.orders.create(order_params)
    redirect_to user_path(@user)
  end
 
  def destroy
    @user = User.find(params[:user_id])
    @order = @user.orders.find(params[:id])
    @order.destroy
    redirect_to user_path(@user)
  end

  private
    def order_params
      params.require(:order).permit(:total_price, :status)
    end
end


