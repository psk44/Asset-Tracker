class CreateJoinTableDevicesEmployees < ActiveRecord::Migration[7.0]
  def change
    create_join_table :devices, :employees do |t|
      # t.index [:device_id, :employee_id]
      # t.index [:employee_id, :device_id]
    end
  end
end
