

class CommandLineInterface


    ###=== Main Menu Display ===###
    def self.show_options
        puts "============================================================================================="
        puts "=                                        Main Menu                                          ="
        puts "============================================================================================="
        puts "=                                                                                           ="
        puts "=                            1 - View Reviews By Car Selection                              ="
        puts "=                            2 - View Reviews By User                                       ="
        puts "=                            3 - View Rating For Selected Car                               ="
        puts "=                            4 - View Top Rated Cars                                        ="
        puts "=                            5 - Add A Review                                               ="
        puts "=                                                                                           ="
        puts "============================================================================================="
        puts "=                           Enter 'exit' to shut program down.                              ="
        puts "============================================================================================="
    end


    ###=== Option Picker Handler ===###
    def self.pick_options
        print "Please select number from Menu options: "
        input = CommandLineInterface.gets_user_input
        case input
        when "1", "view reviews by car selection"
            self.display_cars(input)
        when "2", "view reviews by user"
            self.display_users
        when "3", "view top rated car"
            self.display_top_cars
        when "4", "view rating for selected car"
            self.display_cars(input)
        when "5", "add a review"
            self.display_review_add
        else
            puts "Invalid input....try again"
        end
        show_options
        pick_options
    end

    ###=== Displays Cars To Choose Handler ===###
    def self.display_cars(menu_input)
        puts "============================================================================================="
        puts "=                            Please Choose From The Following:                              ="
        puts "=                                                                                           ="
        puts "=                 1 - 325i BMW Wagon                  11 - 650i BMW Coupe                   ="
        puts "=                 2 - 325xi BMW Sedan                 12 - 650i BMW Sedan                   ="
        puts "=                 3 - 328xi BMW Sedan                 13 - 750xi BMW Sedan                  ="
        puts "=                 4 - 330ci BMW Convertable           14 - 750Li BMW Sedan                  ="
        puts "=                 5 - 428xi BMW Coupe                 15 - Z4 BMW Convertable               ="
        puts "=                 6 - 430i BMW Gran Coupe             16 - X3 BMW SUV                       ="
        puts "=                 7 - 535i BMW Sedan                  17 - X5 BMW SUV                       ="
        puts "=                 8 - 540i BMW Wagon                  18 - X5 (Diesel) BMW SUV              ="
        puts "=                 9 - 545i BMW Sedan                  19 - X6 BMW SUV                       ="
        puts "=                 10 - 550i BMW Sedan                 20 - M5 Sedan                         ="
        puts "=                                                                                           ="
        puts "============================================================================================="
        puts "=                           Enter 'exit' to shut program down.                              ="
        puts "============================================================================================="
        puts "Please select from the listed BMWs: "

        case menu_input
        when "1"

            input = CommandLineInterface.gets_user_input
            case input
            when "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"
                # Car.show_all_reviews(input)
                puts "You picked number #{input}"
                puts "SHOWS REVIEWS HERE"
                puts "SHOWS REVIEWS HERE"
                puts "SHOWS REVIEWS HERE"
            else
                puts "Invalid input....try again"
            end

        when "4"

            input = CommandLineInterface.gets_user_input
            case input
            when "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"
                # Car.show_avg_rating(input)
                puts "You picked number #{input}"
                puts "SHOWS RATINGS HERE"
                puts "SHOWS RATINGS HERE"
                puts "SHOWS RATINGS HERE"
            else
                puts "Invalid input....try again"
            end

        else
            puts "Invalid input....try again"
            puts "Oh shit....what happens now?!"

        end
        sleep 7
        show_options
        pick_options
    end

    ###=== Displays Cars To Choose Handler ===###
    def self.display_users
        puts "============================================================================================="
        puts "=                            Please Choose From The Following:                              ="
        puts "=                                                                                           ="
        puts "=                           1 - Steve           6 - Tom Carroll                             ="
        puts "=                           2 - muguy83         7 - 3sons66                                 ="
        puts "=                           3 - Rogerio R.      8 - Jim Fisher                              ="
        puts "=                           4 - Jonah           9 - LuAnn                                   ="
        puts "=                           5 - WHOOPZEE        10 - Dr. Karl                               ="
        puts "=                                                                                           ="
        puts "============================================================================================="
        puts "=                           Enter 'exit' to shut program down.                              ="
        puts "============================================================================================="
        puts "Please select from the listed users: "

        input = CommandLineInterface.gets_user_input
        case input
        when "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
            # Car.show_all_reviews(input)
            puts "SHOW USER REVIEWS"
            puts "SHOW USER REVIEWS"
            puts "SHOW USER REVIEWS"
        else
            puts "Invalid input....try again"
        end
        sleep 7
        show_options
        pick_option
    end

    ###=== Displays Top Rated Cars Handler ===###
    def self.display_top_cars
        puts "============================================================================================="
        puts "=                            Below are the top 5 rated BMWs :                               ="
        puts "=                                                                                           ="
        puts "=                               1 - INJECT CAR HERE                                         ="
        puts "=                               2 - INJECT CAR HERE                                         ="
        puts "=                               3 - INJECT CAR HERE                                         ="
        puts "=                               4 - INJECT CAR HERE                                         ="
        puts "=                               5 - INJECT CAR HERE                                         ="
        puts "=                                                                                           ="
        puts "============================================================================================="
        sleep 7
        show_options
        pick_option
    end


    ###=== Title Here ===###
    def self.display_review_add
    end


    ###=== User Get Event Handler ===###
    def self.gets_user_input
        input = gets.chomp.downcase
        if input == 'menu'
            start_program
        elsif input == 'exit'
            exit!
        else
            input
        end
    end


    ###=== Main Program Start Event Handler ===###
    def self.start_program
        show_options
        pick_options
    end
end
