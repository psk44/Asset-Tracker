class RemoveDevicesFromEmployees < ActiveRecord::Migration[7.0]
  def change
    remove_reference :employees, :device, null: false, foreign_key: true
  end
end
