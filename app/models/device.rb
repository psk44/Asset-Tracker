class Device < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :device_manufacturer
  belongs_to :device_category
  has_many :softwares
end
