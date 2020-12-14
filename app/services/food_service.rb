class FoodService
  def self.find_details(food)
    response = conn.get("/fdc/v1/foods/search?query=#{food}")

    json = JSON.parse(response.body, symbolize_names: true)
    json[:foods].take(10)
  end

  private
  def self.conn
    Faraday.new(url: "https://api.nal.usda.gov") do |f|
      f.params[:api_key] = ENV['FOOD_SEARCH_API_KEY']
    end
  end
end
