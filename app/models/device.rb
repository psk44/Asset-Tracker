class Device < ApplicationRecord
  belongs_to :employee
  has_many :softwares
end
