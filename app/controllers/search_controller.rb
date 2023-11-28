class SearchController < ApplicationController
  def index
    @query = params[:query]
    @employee_id = params[:employee_id]

    @devices = Device.where("title like '#{@query}%'").where(employee_id: @employee_id)
  end
end
