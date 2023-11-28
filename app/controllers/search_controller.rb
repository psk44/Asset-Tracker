class SearchController < ApplicationController
  def index
    @query = params[:query]
    @employee_id = params[:employee_id]

    @devices = Device.where("name like '#{@query}%'")
  end
end
