class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
  end
  
  def show
    @supplier = Supplier.find(params[:id])
    @orderssupplier = Order.joins(:products).where(products: {supplier: @supplier.id}).uniq
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def update
    @supplier = Supplier.find(params[:id])
   
    if @supplier.update(supplier_params)
      redirect_to @supplier
    else
      render 'edit'
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy
 
    redirect_to suppliers_path
  end

  private

  	def supplier_params
    	params.require(:supplier).permit(:name)
  	end
end
