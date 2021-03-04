class API
    def initialize(drink_name)
        @drink_name = drink_name
        @url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s="
    end


    def get_data
        response_hash = HTTParty.get(@url + @drink_name)
        drink_array = response_hash["drinks"]
        if drink_array.nil? 
            return false
        else
            self.create_drink_objects(drink_array)
        end
    end

    def create_drink_objects(drink_array)
        drink_array.each do |drink_hash|
            Drinks.new(drink_hash)
        end
    end
end
