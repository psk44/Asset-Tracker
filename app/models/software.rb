class Software < ApplicationRecord
  has_and_belongs_to_many :employees

  def compliant?
    #licence count is greater or than equal to user count
    license_count >= employees.count
  end
end
