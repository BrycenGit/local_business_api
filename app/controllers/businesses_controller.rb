class BusinessesController < ApplicationController
  def index
    @businesses = Business.all

  end

  def show
    @business = Business.find(params[:id])

  end

  def create
    @business = Business.create(business_params)

  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
  end

  private
  def business_params
    params.permit(:name, :zipcode, :address, :phone)
  end
end
