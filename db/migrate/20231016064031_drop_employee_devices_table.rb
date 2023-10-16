class DropEmployeeDevicesTable < ActiveRecord::Migration[7.0]
  def change
  drop_table :devices_employees 
  end
end
