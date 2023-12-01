class Search

  def initialize(query, options = {})
    @query = query
    @category_id = options[:category_id]
    @manufacturer_id = options[:manufacturer_id]
  end

  def results
    devices = Device.all
    if @query.present?
      devices = devices.where("name LIKE ?", "%#{@query}%")
    end
    devices
    if @category_id.present?
      devices = devices.where(device_category_id: @category_id)    
    end
    devices
    if @manufacturer_id.present?
      devices = devices.where(device_manufacturer_id: @manufacturer_id) 
    end
    devices
  end
 
end
