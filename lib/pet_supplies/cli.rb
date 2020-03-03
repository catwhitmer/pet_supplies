class PetSupplies::CLI
  
  def start 
    puts "Welcome to Pet Supplies! Your stop for your pets favorite food, treats, and toys."
    puts "Which pet would you like more information about?"
    puts "Type either dogs, cats, or small animals?"
    
    input = gets.strip.downcase
    
    case input
      when "dogs"
        puts "doggies"
      when "cats"
        puts ""
      when "small_animals"
        puts ""
      when "exit" 
        puts "Goodbye"
      else 
        puts "invalid choice"
     end
          
  end
  
end