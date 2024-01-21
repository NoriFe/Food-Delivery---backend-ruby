class MealsView
  def display(meals)
    meals.each do |meal|
      puts "#{meal.id} - Name: #{meal.name} - Price: #{meal.price}"      
    end
    puts ""
  end

  def ask(something)
    puts "#{something.capitalize}?"
    puts ""
    gets.chomp
  end
end
