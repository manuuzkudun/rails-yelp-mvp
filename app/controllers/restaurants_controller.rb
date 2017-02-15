class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    p @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
  end

  def create
    Restaurant.create(restaurant_params)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
