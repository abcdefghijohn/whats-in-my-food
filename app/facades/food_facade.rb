class FoodFacade
  def self.details(food)
    @details = FoodService.find_details(food)
    Detail.new(@details)
  end
end
