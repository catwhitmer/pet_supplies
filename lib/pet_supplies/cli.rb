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
        #scrape dogs page 
        url = "https://www.amazon.com/s/ref=lp_2619533011_nr_n_0?fst=as%3Aoff&rh=n%3A2619533011%2Cn%3A%212619534011%2Cn%3A2975312011&bbn=2619534011&ie=UTF8&qid=1583247141&rnid=2619534011"
        PetSupplies::Scraper.scrape(url)
      when "cats"
        puts "kitties"
        #scrape cats page 
        #https://www.amazon.com/s/ref=lp_2619533011_nr_n_1?fst=as%3Aoff&rh=n%3A2619533011%2Cn%3A%212619534011%2Cn%3A2975241011&bbn=2619534011&ie=UTF8&qid=1583247141&rnid=2619534011
      when "small_animals"
        puts "aww"
        #scrape small animals page 
        #https://www.amazon.com/s/ref=lp_2619533011_nr_n_6?fst=as%3Aoff&rh=n%3A2619533011%2Cn%3A%212619534011%2Cn%3A2975520011&bbn=2619534011&ie=UTF8&qid=1583247141&rnid=2619534011
      when "exit" 
        puts "Goodbye"
      else 
        puts "invalid choice"
     end
          
  end
  
end