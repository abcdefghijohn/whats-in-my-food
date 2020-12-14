class Detail
  attr_reader :gtinUpc, :description, :brand, :ingredients

  def initialize(data)
    @gtinUpc = data[:gtinUpc]
    @description = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end
end
