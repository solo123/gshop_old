json.array!(@notes) do |note|
  json.extract! note, :notes_data_type, :notes_data_id, :notes_text, :employee_id, :status
  json.url note_url(note, format: :json)
end
