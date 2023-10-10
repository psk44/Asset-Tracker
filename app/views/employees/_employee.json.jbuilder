json.extract! employee, :id, :full_name, :assigned_devices, :assigned_software, :created_at, :updated_at
json.url employee_url(employee, format: :json)
