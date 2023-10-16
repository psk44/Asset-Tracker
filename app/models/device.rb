class Device < ApplicationRecord
#  belongs_to :employee
  belongs_to :device_manufacturer
  has_many :softwares
end
