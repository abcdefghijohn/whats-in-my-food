class FoodsController < ApplicationController
  def index
    @food = params[:q]
    @foods = FoodFacade.details(@food)
  end
end
