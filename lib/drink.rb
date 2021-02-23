

class Drink
    @@all = []

    attr_accessor :name #, :idDrink, :strDrink, :strDrinkAlternate

    def initialize(drink_hash)
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
          drink_hash.each do |key, value|
            # binding.pry
        self.class.attr_accessor(key)
        # binding.pry
        # self.send(("#{key}="), value)
        self.respond_to?(key == "idDrink")
            if true
                self.send(("#{key}="), value)
        end
            # binding.pry
        end
        @@all << self
    end

        def name
            self.strDrink
        # if self.respond_to?(idDrink) == true
        #     return self.idDrink
        # end
            # binding.pry
        end

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

    def instructions
        cocktail_instruc = response_hash["drinks"][0]["strInstructions"]
        puts "Instructions: #{cocktail_instruc}"
    end

    def self.all
        @@all
    end
    #This is where data will be stored
end