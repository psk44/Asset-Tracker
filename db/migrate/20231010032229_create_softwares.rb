class CreateSoftwares < ActiveRecord::Migration[7.0]
  def change
    create_table :softwares do |t|
      t.string :name
      t.integer :license_count
      t.string :assigned_employees

      t.timestamps
    end
  end
end
