class Meal
  def initialize(attributes={})
    @name = attributes[:name]
    @id = attributes[:id]
    @price = attributes[:price]    
  end
end
