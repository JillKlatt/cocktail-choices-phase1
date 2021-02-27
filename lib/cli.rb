class CLI

    def run
        greeting
        menu
    end

    def greeting
        puts "- - - - - - - - - - - - ".colorize(:light_blue)
        puts "Welcome to Cocktail Pro!".colorize(:blue)
        puts "- - - - - - - - - - - - ".colorize(:light_blue)
        puts "Looking for a new variation on an old classic?"
        puts "Need to impress a girl but can't remember how to make her favorite drink?"
        puts "Never fear!" 
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
        @drink_api = API.new("#{formatted_input}")
        if !@drink_api.get_data
            puts "-------------------------------------------------"
            puts       "Oh sorry buddy, can't help with that one".colorize(:red)
            puts "That doesn't seem to be available in our database".colorize(:red)
            puts "-------------------------------------------------"
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
            puts "#{cocktail.strDrink.upcase}".colorize(:green)
            puts "~ ~ ~ ~ ~ ~ ~"
            end
        end

    def confirm_drink
        if Drink.all.count >= 2
            puts "Which one?"
            user_input
            if @input.to_i 
                if @input.to_i <= Drink.all.count && @input.to_i > 0
                    puts "YOU GOT THIS!".colorize(:blue)
                    puts "-------------"
                    puts "The main ingredient is #{Drink.all[@input.to_i - 1].strIngredient1}."
                    puts "Along with #{Drink.all[@input.to_i - 1].strIngredient2} and #{Drink.all[@input.to_i - 1].strIngredient3}."
                    puts "Here's what you're gonna do: #{Drink.all[@input.to_i - 1].strInstructions}"
                else 
                    puts "Invalid response, let's try again".colorize(:red)
                    Drink.all.clear
                    menu
                end
            end
        else
            puts "This one? (y/n)"
            user_input   
                if @input == "y" || @input == "yes"
                    puts "YOU GOT THIS!".colorize(:blue)
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
                    puts "Invalid response, let's try again".colorize(:red)
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
            puts "Have a great night!".colorize(:purple)
            exit
        else
            puts "Invalid response, let's try again".colorize(:red)
            menu
        end
    end
end