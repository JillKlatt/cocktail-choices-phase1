class CLI
    #get inputs and will show strings or display
    def run
        greeting
        @marg = API.new("margarita")
        @marg_data = @marg.get_data
        @whisk_sour = API.new("whiskey%sour")
        # binding.pry
        @whisk_sour_data = @whisk_sour.get_data
        @rail_split = API.new("rail%splitter")
        @rail_split_data = @rail_split.get_data
        menu
    end

    # def run(drink_name)
    #     @drink_name = drink_name
    #     @drink_api = API.new("#{@drink_name}")
    #     @drink_data = @drink_api.get_data
    # end

    def greeting
        puts "Welcome to the Cocktail Chooser!" 
        puts "----Grabbing Data----"
    end

    def menu
        puts "Would you like to make one of the following cocktails?"
        puts "1. #{@marg_data.name}"
        puts "2. #{@whisk_sour_data.name}"
        puts "3. #{@rail_split_data.name}"

    end

    # def name
    #     @cocktail_data.strDrink
    # end
end