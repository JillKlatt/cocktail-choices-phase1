class CLI

    def run
        greeting
        menu
    end

    def greeting
        puts "So the girl you like just asked you to make a cocktail, but you don't know how?"
        puts "Never fear" 
    end

    def user_input
        @input = gets.chomp.downcase
        if @input == "exit"
            exit
        end
    end

    def menu
        puts "What drink do you need help with?"
        user_input
        formatted_input = @input.gsub(/\ /, '%')
        @drink_api = API.new("#{formatted_input}")#get_data
        #binding.pry
        if !@drink_api.get_data
            puts "----------------------------------------"
            puts "Oh sorry buddy, can't help with that one"
            puts "----------------------------------------"
            Drink.all.clear
            menu
        end
        display_options
        confirm_drink
        exit_option
    end

    def display_options
        if Drink.all.count >= 2
        puts "Our database contains #{Drink.all.count} options:" 
        Drink.all.each.with_index(1) do |cocktail, index|
            puts "#{index}. #{cocktail.strDrink}"
            end
        else 
            Drink.all.each do |cocktail|
            puts "Our database has:"
            puts "~ ~ ~ ~ ~ ~ ~"
            puts "#{cocktail.strDrink.upcase}"
            puts "~ ~ ~ ~ ~ ~ ~"
            end
        end

    def confirm_drink
        if Drink.all.count >= 2
            puts "Which one?"
            user_input
            if @input.to_i 
                if @input.to_i <= Drink.all.count && @input.to_i > 0
                    puts "YOU GOT THIS!"
                    puts "-------------"
                    puts "The main ingredient is #{Drink.all[@input.to_i - 1].strIngredient1}."
                    puts "Along with #{Drink.all[@input.to_i - 1].strIngredient2} and #{Drink.all[@input.to_i - 1].strIngredient3}."
                    puts "Here's what you're gonna do: #{Drink.all[@input.to_i - 1].strInstructions}"
                else 
                    puts "Invalid response, let's try again"
                    Drink.all.clear
                    menu
                end
            end
        else
            puts "This one? (y/n)"
            user_input   
                if @input == "y" || @input == "yes"
                    puts "YOU GOT THIS!"
                    puts "-------------"
                    puts "The main ingredient is #{Drink.all.first.strIngredient1}."
                    puts "Along with #{Drink.all.first.strIngredient2} and #{Drink.all.first.strIngredient3}."
                    puts "Here's what you're gonna do: #{Drink.all.first.strInstructions} "

                elsif
                    @input == "n" || @input == "no"
                    puts "Let's try again!"
                    Drink.all.clear
                    menu
                else
                    puts "Invalid response, let's try again"
                    display_options
                    confirm_drink
                end
            end
        end
    end
    def exit_option
        puts "--------------"
        puts "You nailed it!"
        puts "Would you like to:"
        puts "1 View the last option"
        puts "2 Make a new cocktail"
        puts "3 Exit"
        user_input
        if @input == "1" || @input == "1 view the last option" || @input == "view the last option"
            display_options
            confirm_drink
            exit_option
        elsif @input == "2" || @input == "2 make new cocktail" || @input == "make new cocktail"
            Drink.all.clear
            menu
        elsif @input == "3" || @input == "exit"
            puts "Have a great night!"
            exit
        else
            puts "Invalid response, let's try again"
            menu
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

