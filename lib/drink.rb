

class Drink
    @@all = []

    attr_accessor :name #, :idDrink, :strDrink, :strDrinkAlternate

    def initialize(drink_hash)
       
          drink_hash.each do |key, value|
            #binding.pry
            #if key.respond_to?("strDrink") || key.respond_to?("strInstructions") || key.respond_to?("strIngredient1") || key.respond_to?("strIngredient2") || key.respond_to?("strIngredient3")
            if key == "strDrink" || key == "strInstructions" || key == "strIngredient1" || key == "strIngredient2" || key == "strIngredient3"
               # binding.pry
        self.class.attr_accessor(key)
        self.send(("#{key}="), value)
        end
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

##GOOD TRIES:

    #     def name
    #         self.strDrink
    #     end

    #     def first_ingr
    #         self.strIngredient1
    #     end

    #     def self.name
    #         binding.pry
    #         name
    #     end


    # def instructions
    #     self.strInstructions
    #     # cocktail_instruc = response_hash["drinks"][0]["strInstructions"]
    #     # puts "Instructions: #{cocktail_instruc}"
    # end

 # binding.pry

        # drink_array[1,10].each do |key, value|
            # binding.pry
        # drink_hash = Hash[drink_array]
        # binding.pry
        # drink_hash.each do |key, value|
        #     # binding.pry
        #import_info = drink_array[0..2]
        #import_info.each do |key, value|
        #   binding.pry

    # def name
    #     cocktail_name = response_hash["drinks"][0]["strDrink"]
    #     puts "Cocktail Name: #{cocktail_name}"
    #     main_ingredient = response_hash["drinks"][0]["strIngredient1"]
    #     if main_ingredient == "Tequila"
    #         puts "~~OOOOH boy let's make some mistakes tonight!~~"
    #     else
    #         puts "Ah, a fine cocktail choice."
    #     end
    #     drink_name
    #     binding.pry
    # end

    # def name
    #     self.idDrink
    # end

            # self.send(("#{key}="), value)
        # if self.respond_to?("idDrink") == true
        #         self.send(("#{key}="), value)