class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    res = @restaurants[0].reviews
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
