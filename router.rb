

class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true    
  end
  
  def run
    while @running
    choice = display_menu
    system('clear') || system('cls')
    action(choice)
    end
  end
  
  def display_menu
    puts "##########################"
    puts "########   MENU   ########"
    puts "##########################"
    puts ""
    puts "What is the next step?"
    puts "1 - List of all meals"
    puts "0 - Exit" 
    puts ""
    puts "##########################"   
    gets.chomp.to_i
  end

  def action(choice)
    case choice
    when 1 then @meals_controller.list
    when 0 then @running = false
    else
        puts "Do it agian"
    end
  end
end