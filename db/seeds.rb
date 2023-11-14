# Seed device categories
device_categories = ["Smart Phone", "Laptop", "Desktop"]
device_categories.each do |category|
  DeviceCategory.create(name: category)
end

# Seed device manufacturers
device_manufacturers = [
  { name: "Apple", website: "https://www.apple.com" },
  { name: "Lenovo", website: "https://www.lenovo.com" },
  { name: "Dell", website: "https://www.dell.com" }
]
device_manufacturers.each do |manufacturer_data|
  DeviceManufacturer.create(manufacturer_data)
end

# Seed employees
employees = []
5.times do |n|
  employees << Employee.create(
    first_name: "Employee",
    last_name: (n + 1).to_s
  )
end

# Create device for each category and manufacturer 3x
3.times do |n|
  DeviceCategory.all.each do |category|
    DeviceManufacturer.all.each do |manufacturer|
      Device.create(
        name: "Device #{rand(100)}",
        device_category: category,
        device_manufacturer: manufacturer,
      )
    end
  end
end

# 3 devices to each employee
3.times do |n|
  Employee.all.each do |employee|
    device=Device.all.sample
    device.employee=employee
    device.save
  end
end

# Seed software packages
softwares = []
5.times do |n|
  softwares << Software.create(
    name: "Software #{n + 1}",
    license_count: rand(1..5)
  )
end

# Repeat the software assignment process 3 times
3.times do
  employees.each do |employee|
    software_id = rand(softwares.length)
    employee.softwares << softwares[software_id]
  end
end

