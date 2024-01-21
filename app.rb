require_relative "router.rb"
require_relative "./app/controllers/meals_controller.rb"
require_relative "./app/repositories/meal_repository.rb"
require_relative "./app/controllers/customers_controller.rb"
require_relative "./app/repositories/customer_repository.rb"


meal_repository = MealRepository.new(File.join(__dir__, "./app/data/meals.csv"))
meals_controller = MealsController.new(meal_repository)
customer_repository = CustomerRepository.new(File.join(__dir__, "./app/data/customers.csv"))
customers_controller = CustomersController.new(customer_repository)

router = Router.new(meals_controller, customers_controller)
router.run