# Stretch Goal - Create CLI in order to create Pets

class Cli
    def run
        puts "Welcome to the amazing Flatiron Pet Shop!"
        main_menu
    end

    def main_menu
        puts "Type 1. to create a pet"
        puts "Type 2. to list pets"
        puts "Type 3. to search pets"
        puts "Type 'exit' to exit program"
        puts ""
        menu_select
    end

    def menu_select
        print "Please Enter Here: "
        user_input = gets.chomp

        if user_input == "1"
            puts "we are creating a pet"
        elsif user_input == "2"
            puts "listing pets"
        elsif user_input == "3"
            puts "searching pets"
        elsif user_input.downcase == "exit"
            puts "Goodbye"
            exit
        else
            puts "invalid choice"
            main_menu
        end
    end
end