class Meal
  attr_accessor :id
  attr_reader :id, :name, :price
  def initialize(attributes={})
    @name = attributes[:name]
    @id = attributes[:id]
    @price = attributes[:price]    
  end
end
