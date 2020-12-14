class FoodFacade
  def self.details(food)
    @details = FoodService.find_details(food)
    @details.map do |detail|
      Detail.new(detail)
    end
  end
end
