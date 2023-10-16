class ChangeSoftwaresLicenseCountToInteger < ActiveRecord::Migration[7.0]
  def change
  change_column :softwares, :license_count, :integer
  end
end
