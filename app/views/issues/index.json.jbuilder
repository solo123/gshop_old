json.array!(@issues) do |issue|
  json.extract! issue, :title, :description, :due_date, :employee_id, :status
  json.url issue_url(issue, format: :json)
end
