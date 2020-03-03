class PetSupplies::Scraper
  
  def self.scrape(url)
    page = Nokogiri::HTML(open(url))
    links_array = page.css("span.a-list-item")
    
    links_array.map do |link|
      link.text
    end
    
  
    #page.css("span.a-list-item")[2].text
    #page.css("span.a-list-item")[3].text
    #page.css("span.a-list-item")[17].text
  end
  
end