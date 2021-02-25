# require_relative '../lib/modules/cocktails.rb'

class API
    # All the data is going to be grabbed here.
    # def initialize(url)
    #     @url = url
    # end
    def initialize(drink_name)
        @drink_name = drink_name
        # @name = cocktail_name
        @url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="
        # binding.pry
    end


    def get_data
        response_hash = HTTParty.get(@url + @drink_name)
        #binding.pry
        drink_array = response_hash["drinks"]
        if drink_array.nil?
            puts "Oh sorry buddy, can't help with that one"
            exit
        else
        #  binding.pry
        self.create_drink_objects(drink_array)
        end
    #binding.pry
    end

    def create_drink_objects(drink_array)
        #binding.pry
        drink_array.each do |drink_hash|
            #binding.pry
            Drink.new(drink_hash)
            #puts "created new drink"
            #binding.pry
        end
    end
end

## GOOD TRIES
    #GET_DATA
             #51 keys!
        #  binding.pry
                # cocktail_name = response_hash["drinks"][0]["strDrink"]
        # cocktail_instruc = response_hash["drinks"][0]["strInstructions"]
        # main_ingredient = response_hash["drinks"][0]["strIngredient1"]