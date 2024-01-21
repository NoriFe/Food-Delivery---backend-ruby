class CustomersView
    def display(customers)
      customers.each do |customer|
        puts "#{customer.id} - Name: #{customer.name} - Price: #{customer.address}"      
      end
      puts ""
    end
  
    def ask(something)
      puts "#{something.capitalize}?"
      puts ""
      gets.chomp
    end
  end
  