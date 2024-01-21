require_relative "./models/meal.rb"
require_relative "./repositories/meal_repository.rb"

# meal = Meal.new(id:1, name:"Pizza", price: 10)

# p meal

meal_repo = MealRepository.new(File.join(__dir__,'/data/meals.csv'))
p meal_repo
