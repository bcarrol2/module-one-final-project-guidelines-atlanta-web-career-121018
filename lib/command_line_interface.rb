

class CommandLineInterface


    ###=== Main Menu Display ===###
    def self.show_options
        puts "============================================================================================="
        puts "=                                        Main Menu                                          ="
        puts "============================================================================================="
        puts "=                                                                                           ="
        puts "=                            1 - View Reviews By Car Selection                              ="
        puts "=                            2 - View Reviews By User                                       ="
        puts "=                            4 - View Rating For Selected Car                               ="
        puts "=                            3 - View Top Rated Cars                                        ="
        puts "=                            5 - Add A Review                                               ="
        puts "=                                                                                           ="
        puts "============================================================================================="
        puts "=                           Enter 'exit' to shut program down.                              ="
        puts "=============================================================================================\n\n\n"
    end


    ###=== Option Picker Handler ===###
    def self.pick_options
        print "Please select number from Menu options: "
        input = CommandLineInterface.gets_user_input
        case input
        when "1", "view reviews by car selection"
            display_cars
        when "2", "view reviews by user"
            display_users
        when "3", "view top rated car"
            display_top_cars #Review.display_top_rated_car
        when "4", "view rating for selected car"
            display_cars_for_reviews
        when "5", "add a review"
            display_review_add
        else
            puts "Invalid input....try again"
        end
        show_options
        pick_options
    end

    ###=== Displays  ===###
    def self.display_cars
    end

    ###=== Title Here ===###
    def self.display_users
    end

    ###=== Title Here ===###
    def self.display_top_cars
    end

    ###=== Title Here ===###
    def self.display_cars_for_reviews
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
