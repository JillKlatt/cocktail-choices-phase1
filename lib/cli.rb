class CLI
    #get inputs and will show strings or display
    # def run
    #     greeting
    #     @marg = API.new("margarita")
    #     @marg_data = @marg.get_data
    #     @whisk_sour = API.new("whiskey%sour")
    #     # binding.pry
    #     @whisk_sour_data = @whisk_sour.get_data
    #     @rail_split = API.new("rail%splitter")
    #     @rail_split_data = @rail_split.get_data
    #     menu
    # end

    def run
        # @drink_name = drink_name
        greeting
        menu
    end

    def greeting
        puts "So the girl you like just asked you to make a cocktail, but you don't know how?"
        puts "Never fear" 
        puts "----Grabbing Data----"
    end

    def menu
        puts "What drink are you thinkin?"
        input = nil
        input = gets.chomp
        formatted_input = input.gsub(/\ /, '%')
        @drink_api = API.new("#{formatted_input}")
        puts "got API"
        @drink_data = @drink_api.get_data
        #binding.pry
        puts "Got data"
        # retrieve_main_alcohol
        options
    end

    def options
        puts @drink_data[0]["strDrink"]
        #binding.pry
        puts "This one sound good? (y/n)"
        input = nil
        ##binding.pry
        # @counter = 0
        input = gets.chomp    
        # while @counter >= 0    
        if input == "Y" || input == "y" || input == "yes" || input == "Yes" || input == "YES"
            puts @drink_data[0]["strInstructions"]
        elsif
            input == "N" || input == "n" || input == "no" || input == "No" || input == "NO"
            puts "Let's try again!"
            counter += 1
        end
    end
    end

    # def retrieve_main_alcohol
    #     puts "What's your main alcohol?"
    #     input = nil
    #     while input != "exit" do
    #         input = gets.chomp
    #         if input == "tequila" || input == "Tequila"
    #             puts "Whoo baby"
    #         end
    #     end
    # end

    # def menu
    #     puts "Would you like to make one of the following cocktails?"
    #     puts "1. #{@marg_data.name}"
    #     puts "2. #{@whisk_sour_data.name}"
    #     puts "3. #{@rail_split_data.name}"
    # end

end