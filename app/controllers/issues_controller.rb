class IssuesController < ResourcesController
  private
    def issue_params
      params.require(:issue).permit(:title, :description, :due_date, :employee_id, :status)
    end
end
