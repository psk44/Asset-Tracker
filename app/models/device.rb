class Device < ApplicationRecord
  belongs_to :employee
  belongs_to :device_manufacturer
  belongs_to :device_category
  has_many :softwares
end
