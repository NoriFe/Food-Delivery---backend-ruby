require_relative "../views/meal_view.rb"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meals_view = MealsView.new
  end

  def list
    display_meals
  end

  def add
    name = @meals_view.ask(:name)
    price = @meal_view.ask(:price)
    meal = Meal.new(name: name, price: price)
    @meal_repository.create(meal)
  end

  private

  def display_meals
    meals = @meal_repository.all
    @meals_view.display(meals)
  end
end