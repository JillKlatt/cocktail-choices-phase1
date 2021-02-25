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
        #@drink_data = @drink_api.get_data
        display_options
        confirm_drink
        exit_option
    end

    def display_options
        #binding.pry
            if Drink.all.count >= 2
                #binding.pry
            puts "Our database contains #{Drink.all.count} options:" 
            #binding.pry
        Drink.all.each.with_index(1) do |cocktail, index|
        puts "#{index}. #{cocktail.strDrink}"
        end
 
        else 
            #binding.pry
            Drink.all.each do |cocktail|
        puts "Our database has: #{cocktail.strDrink.upcase}"
            end
        end

        def confirm_drink
            if Drink.all.count >= 2
                puts "Which one?"
                input = nil
                input = gets.chomp
                if input.to_i
                puts "YOU GOT THIS!"
                puts "The main ingredient is #{Drink.all[input.to_i].strIngredient1}."
                puts "Along with #{Drink.all[input.to_i].strIngredient2} and #{Drink.all[input.to_i].strIngredient3}."
                #binding.pry
                puts "Here's what you're gonna do: #{Drink.all[input.to_i].strInstructions} "
                end
            else
        puts "This one? (y/n)"
        input = nil
        ##binding.pry
        input = gets.chomp    
                #Bring input to downcase
        if input == "Y" || input == "y" || input == "yes" || input == "Yes" || input == "YES"
            puts "YOU GOT THIS!"
            puts "The main ingredient is #{Drink.all.first.strIngredient1}."
            puts "Along with #{@drink_data[input.to_i - 1]["strIngredient2"]} and #{@drink_data[input.to_i - 1]["strIngredient3"]}."
            puts "Here's what you're gonna do: #{@drink_data[0]["strInstructions"]} "
        elsif
            input == "N" || input == "n" || input == "no" || input == "No" || input == "NO"
            puts "Let's try again!"
            #menu
        end
    end
    end
    end
    def exit_option
        puts "You nailed it! Make another? (y/n)"
        input = nil
        input = gets.chomp
        if input == "Y" || input == "y" || input == "yes" || input == "Yes" || input == "YES"
            menu
        elsif input == "N" || input == "n" || input == "no" || input == "No" || input == "NO"
            puts "Have a great night!"
            exit
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

