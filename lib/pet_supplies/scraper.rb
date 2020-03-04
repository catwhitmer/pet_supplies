class PetSupplies::Scraper
  
  def self.scrape(url)
    page = Nokogiri::HTML(open(url))
    links_array = page.css("span.a-list-item")
    
    links_array.map do |link|
      PetSupplies::Supplies.new(link.text, link.first_element_child.attributes["href"].value)
    end
    #return value will be an array of objects
  end
  
end


    #food
    #page.css("span.a-list-item")[2].text
    #Treats
    #page.css("span.a-list-item")[3].text
    #toys
    #page.css("span.a-list-item")[17].text