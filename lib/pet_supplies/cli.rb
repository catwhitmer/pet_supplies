class PetSupplies::CLI
  
  def start 
    puts "Welcome to Cat's Pet Supplies!"
    puts "Which pet would you like more information about?"
    puts "Type either dogs, cats, or small animals?"
    puts "To leave anytime, type exit."
    
    input = gets.strip.downcase
    
    case input
      when "dogs"
        puts "doggies"
      when "cats"
        puts "kitties"
      when "small_animals"
        puts "aww"
      when "exit" 
        puts "Goodbye"
      else 
        puts "invalid choice"
     end
          
  end
  
end