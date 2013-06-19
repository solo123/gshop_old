class CustomersController < NestedResourcesController
  def select
    load_object
    if @parent
      @parent.customer = @object
      @parent.save
      redirect_to @parent
      return
    end
    render :text => 'no parent'
  end
  def new
    super
    @object.mobile = params[:q] if params[:q]
  end

end
