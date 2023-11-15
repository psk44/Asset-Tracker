class SearchController < ApplicationController
  def index
    @query = params[:query]

    @device = Device.where(title: @query)
  end
end
