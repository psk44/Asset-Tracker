class AddCategoryToDevices < ActiveRecord::Migration[7.0]
  def change
    add_reference :devices, :device_category, foreign_key: true
  end
end
