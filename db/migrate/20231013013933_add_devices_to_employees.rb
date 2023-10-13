class AddDevicesToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :device, foreign_key: true
  end
end
