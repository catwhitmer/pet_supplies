class PetSupplies::CLI
  
  def start 
    puts "Welcome to Pet Supplies!"
    puts "Which pet are you shopping for today?"
    puts "Type either dogs, cats, or small animals?"
    puts "To leave anytime, type exit."
    
    input = gets.strip.downcase
    
    case input
      when "dogs"
        puts "doggies"
        #scrape dogs page 
        url = "https://www.amazon.com/dogs-supplies-training-beds-collars-grooming/b/?ie=UTF8&node=2975312011&ref_=sv_petsupplies_2"
        catagory = PetSupplies::Scraper.scrape(url)
        puts catagory[2]
      when "cats"
        puts "kitties"
        #scrape cats page 
        #https://www.amazon.com/dogs-supplies-training-beds-collars-grooming/b/?ie=UTF8&node=2975312011&ref_=sv_petsupplies_3"
      
      when "small animals"
        puts "small animals"
        #scrape small animals page 
        #https://www.amazon.com/dogs-supplies-training-beds-collars-grooming/b/?ie=UTF8&node=2975312011&ref_=sv_petsupplies_5"
       
      when "exit" 
        puts "Goodbye"
      else 
        puts "invalid choice"
     end
          
  end
  
end