json.extract! device, :id, :name, :manufacturer, :category, :assigned_to, :created_at, :updated_at
json.url device_url(device, format: :json)
