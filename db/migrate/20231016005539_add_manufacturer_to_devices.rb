class AddManufacturerToDevices < ActiveRecord::Migration[7.0]
  def change
    add_reference :devices, :device_manufacturer, foreign_key: true
  end
end
