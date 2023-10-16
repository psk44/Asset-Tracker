class Employee < ApplicationRecord
  has_one_attached :profile_picture do 
  end

  has_many :softwares
  has_many :devices  

  def full_name
    if first_name.present? and last_name.present?
      first_name + " " + last_name
    end
  end

end


