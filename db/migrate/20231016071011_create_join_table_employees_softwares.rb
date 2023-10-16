class CreateJoinTableEmployeesSoftwares < ActiveRecord::Migration[7.0]
  def change
    create_join_table :employees, :softwares do |t|
      # t.index [:employee_id, :software_id]
      # t.index [:software_id, :employee_id]
    end
  end
end
