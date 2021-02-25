class CLI


    def run
        # @drink_name = drink_name
        greeting
        menu
    end

    def greeting
        puts "So the girl you like just asked you to make a cocktail, but you don't know how?"
        puts "Never fear" 
    end

    def menu
        puts "What drink do you need help with?"
        input = nil
        input = gets.chomp
        formatted_input = input.gsub(/\ /, '%')
        @drink_api = API.new("#{formatted_input}")
        #puts "got API"
        @drink_data = @drink_api.get_data
        display_options
        confirm_drink
    end

    def display_options
        #binding.pry
        if @drink_data.count >= 2
            puts "Our database contains #{@drink_data.count} #{@drink_data[0]["strDrink"]}s:"
        Drink.all.each.with_index(1) do |cocktail, index|
        puts "#{index}. #{cocktail.strDrink}"
        end
 
        else 
        puts "Our database has: #{@drink_data[0]["strDrink"].upcase}"
        end

        def confirm_drink
            if @drink_data.count >= 2
                puts "Which one?"
                input = nil
                input = gets.chomp
                # input = @index
                puts     puts "The main ingredient is #{@drink_data[input]["strIngredient1"]}."
                puts "Here's what you're gonna do: #{@drink_data[input]["strInstructions"]} "
                    puts "YOU GOT THIS!"

            else
        puts "This one? (y/n)"
        input = nil
        ##binding.pry
        counter = 0
        input = gets.chomp    
        # while @counter >= 0    
        if input == "Y" || input == "y" || input == "yes" || input == "Yes" || input == "YES"
            puts "The main ingredient is #{@drink_data[0]["strIngredient1"]}."
            puts "Here's what you're gonna do: #{@drink_data[0]["strInstructions"]} "
                puts "YOU GOT THIS!"
        elsif
            input == "N" || input == "n" || input == "no" || input == "No" || input == "NO"
            puts "Let's try again!"
            #menu
        end
    end
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

    # def menu
    #     puts "Would you like to make one of the following cocktails?"
    #     puts "1. #{@marg_data.name}"
    #     puts "2. #{@whisk_sour_data.name}"
    #     puts "3. #{@rail_split_data.name}"
    # end

       #binding.pry
            # counter = 0
            # while counter >= 0

                # drink_names = @drink_data[0..-1]
                # #binding.pry
                # drink_list = drink_names.include?("strDrink")

                # Drink.all.each do |cocktail|
                #     puts "#{cocktail.strDrink}"
                # end

            # drink_names = @drink_data[0..-1].each do |name| 
            #     #binding.pry
            #     name = @drink_data[0]["strDrink"]
            #     binding.pry
            #     counter += 1
            #     end
            # end
        # binding.pry

                #binding.pry
        #puts "Got data"
        #count how many options
        # retrieve_main_alcohol

