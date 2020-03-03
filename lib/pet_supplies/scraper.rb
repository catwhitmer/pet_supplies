class PetSupplies::Scraper
  
  def self.scrape(url)
    page = Nokogiri::HTML(open(url))
    links_array = page.css("span.a-list-item")
    
    links_array.map do |link|
      binding.pry
      #PetSupplies::Supplies.new(link.text)
    
    end
    
    #food
    #page.css("span.a-list-item")[2].text
    #Treats
    #page.css("span.a-list-item")[3].text
    #toys
    #page.css("span.a-list-item")[17].text
  end
  
end