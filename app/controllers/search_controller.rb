class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category_id = params[:category_id]
    @manufacturer_id = params[:manufacturer_id]

    @devices = Device.all
    @devices = @devices.where("name LIKE ?", "#{@query}%") if @query.present?
    @devices = @devices.where(category_id: @category_id) if @category_id.present?
    @devices = @devices.where(manufacturer_id: @manufacturer_id) if @manufacturer_id.present?
  end
end
