class OrdersController < ApplicationController
  
  def detail
    @order = Order.find(params[:order_id])
    respond_to do |format|
      format.json { render partial: 'suppliers/orderdetail', format: :erb, layout: false}
    end
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


