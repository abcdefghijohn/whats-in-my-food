class FoodsController < ApplicationController
  def index
    food = params[:q]

    conn = Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params[:api_key] = ENV['FOOD_SEARCH_API_KEY']
    end

    response = conn.get("/fdc/v1/foods/search?query=#{food}")
    
    json = JSON.parse(response.body, symbolize_names: true)
    @foods = json[:results]
  end
end
