class PetSupplies::Supplies
  attr_accessor :name, :url
  
  @@all =[]
  
  def initialize(name, url)
    @name = name
    @url = "https://www.amazon.com" + url 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
end
