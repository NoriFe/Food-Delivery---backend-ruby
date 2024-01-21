require_relative "../views/customer_view.rb"

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @customers_view = CustomersView.new
  end

  def list
    display_customers
  end

  def add
    name = @customers_view.ask(:name)
    address = @customers_view.ask(:address)
    customer = Customer.new(name: name, address: address)
    @customer_repository.create(customer)
  end

  private

  def display_customers
    customers = @customer_repository.all
    @customers_view.display(customers)
  end
end