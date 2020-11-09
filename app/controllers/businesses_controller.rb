class BusinessesController < ApplicationController
  before_action :restrict_access


  def index
    if params[:name_search]
      @businesses = Business.search_by_name(params[:name_search])
    else
      @businesses = Business.all
    end
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create!(business_params)
    json_response(@business, :created)
  end

  def update
    @business = Business.find(params[:id])
    if @business.update!(business_params)
      render status: 200, json: { message: "successful update" }
    end
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
  end

  def random
    @business = Business.all.sample
    json_response(@business)
  end


  private
  def business_params
    params.permit(:name, :zipcode, :address, :phone)
  end
  
end
