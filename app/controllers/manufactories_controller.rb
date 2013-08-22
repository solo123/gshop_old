class ManufactoriesController < ResourcesController
  def remove_customer
    m = Manufactory.find(params[:id])
    c = Customer.find(params[:customer])
    m.customers.delete(c)
    redirect_to :action => :show 
  end
  def add_customer
    m = Manufactory.find(params[:id])
    c = Customer.find(params[:customer])
    m.customers << c
    redirect_to :action => :show
  end
end
