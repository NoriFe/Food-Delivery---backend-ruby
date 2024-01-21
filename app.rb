require_relative "router.rb"
require_relative "./app/controllers/meals_controller.rb"
require_relative "./app/repositories/meal_repository.rb"


meal_repository = MealRepository.new(File.join(__dir__, "./app/data/meals.csv"))
meals_controller = MealsController.new(meal_repository)
router = Router.new(meals_controller)
router.run