class IssuesController < ResourcesController
  autocomplete :manufactory, :name, :full => true

  def create
    params.permit!
    @object = Issue.new(params[:issue])
    @object.employee = current_employee
    @object.status = 1
    if @object.save
      if params[:emp]
        params[:emp].each do |para|
          @object.employees << Employee.find(para[0])
        end
      end
      @object.employees << current_employee
      @object.save
      redirect_to @object
      return
    else
      flash[:error] = @object.errors.full_messages.to_sentence
    end
    redirect_to :action => :new
  end
  def update
    if params[:emp]
		  load_object
      params[:emp].each do |para|
        @object.employees << Employee.find(para[0])
      end
    end
    super
  end

  private
  def issue_params
    params.require(:issue).permit(:title, :description, :due_date, :employee_id, :status)
  end
end
