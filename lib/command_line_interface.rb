

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

    ###=== Displays Cars To Choose Handler ===###
    def self.display_cars
        print "============================================================================================="
        print "=                            Please Choose From The Following:                              ="
        print "=                                                                                           ="
        print "=                 1 - 325i BMW Wagon                  11 - 650i BMW Coupe                   ="
        print "=                 2 - 325xi BMW Sedan                 12 - 650i BMW Sedan                   ="
        print "=                 3 - 328xi BMW Sedan                 13 - 750xi BMW Sedan                  ="
        print "=                 4 - 330ci BMW Convertable           14 - 750Li BMW Sedan                  ="
        print "=                 5 - 428xi BMW Coupe                 15 - Z4 BMW Convertable               ="
        print "=                 6 - 430i BMW Gran Coupe             16 - X3 BMW SUV                       ="
        print "=                 7 - 535i BMW Sedan                  17 - X5 BMW SUV                       ="
        print "=                 8 - 540i BMW Wagon                  18 - X5 (Diesel) BMW SUV              ="
        print "=                 9 - 545i BMW Sedan                  19 - X6 BMW SUV                       ="
        print "=                 10 - 550i BMW Sedan                 20 - M5 Sedan                         ="
        print "=                                                                                           ="
        print "============================================================================================="
        print "=                           Enter 'exit' to shut program down.                              ="
        print "=============================================================================================\n\n\n"

        input = CommandLineInterface.gets_user_input
        case input
        when "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"
            Car.show_all_reviews(input)
        else
            puts "Invalid input....try again"
        end
        sleep 5
        show_options
        pick_option
    end

    ###=== Displays Cars To Choose Handler ===###
    def self.display_users
        # print "============================================================================================="
        # print "=                            Please Choose From The Following:                              ="
        # print "=                                                                                           ="
        # print "=                 1 - 325i BMW Wagon                  6 - 650i BMW Coupe                   ="
        # print "=                 2 - 325xi BMW Sedan                 7 - 650i BMW Sedan                   ="
        # print "=                 3 - 328xi BMW Sedan                 8 - 750xi BMW Sedan                  ="
        # print "=                 4 - 330ci BMW Convertable           9 - 750Li BMW Sedan                  ="
        # print "=                 5 - 428xi BMW Coupe                 10 - Z4 BMW Convertable               ="
        # print "=                                                                                           ="
        # print "============================================================================================="
        # print "=                           Enter 'exit' to shut program down.                              ="
        # print "=============================================================================================\n\n\n"
        #
        # input = CommandLineInterface.gets_user_input
        # case input
        # when "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
        #         "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"
        #     Car.show_all_reviews(input)
        # else
        #     puts "Invalid input....try again"
        # end
        # sleep 5
        # show_options
        # pick_option
    end

    ###=== Displays Top Rated Cars Handler ===###
    def self.display_top_cars
    end

    ###=== Displays Cars To Choose For Handler ===###
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
