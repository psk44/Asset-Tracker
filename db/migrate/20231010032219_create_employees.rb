class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :full_name
      t.string :assigned_devices
      t.string :assigned_software

      t.timestamps
    end
  end
end
