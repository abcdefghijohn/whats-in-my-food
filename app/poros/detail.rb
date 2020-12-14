class Detail
  attr_reader :gtinUpc, :description, :brand, :ingredients, :count

  def initialize(data)
    @gtinUpc = data[:foods][:gtinUpc]
    @description = data[:foods][:description]
    @brand = data[:foods][:brandOwner]
    @ingredients = data[:foods][:ingredients]
    @count = data[:foods].count
  end
end
