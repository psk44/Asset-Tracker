class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category_id = params[:category_id]
    @manufacturer_id = params[:manufacturer_id]

    @search = Search.new(@query, :category_id => @category_id, :manufacturer_id => @manufacturer_id)
    @devices = @search.results
  end
end
