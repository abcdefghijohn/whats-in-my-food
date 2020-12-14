require 'rails_helper'
describe 'Food Facade' do
  it 'returns search results' do
    food = "sweet potatoes"
    result = FoodFacade.details(food)
    expect(result).to be_an(Array)
    expect(result.size).to eq(50)
    expect(result.first).to be_an_instance_of(Detail)
  end
end
