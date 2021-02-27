class Drink
    @@all = []

    attr_accessor :strDrink, :strInstructions, :strIngredient1, :strIngredient2, :strIngredient3

    def initialize(drink_hash)
       drink_hash.each do |key, value|
       self.send(("#{key}="), value) if self.respond_to?(key)
       end
       @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all == []
    end
end