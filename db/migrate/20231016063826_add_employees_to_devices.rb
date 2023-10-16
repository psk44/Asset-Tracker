class AddEmployeesToDevices < ActiveRecord::Migration[7.0]
  def change
    add_reference :devices, :employee, foreign_key: true
  end
end
