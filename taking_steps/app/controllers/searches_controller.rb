class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:address_street,
                                   :address_city,
                                   :address_state,
                                   :address_zip,
                                   :veteran)
  end

end
