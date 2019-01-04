

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
            self.display_cars(input)
        when "2", "view reviews by user"
            self.display_users
        when "3", "view top rated car"
            self.display_top_cars #Review.display_top_rated_car
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
        # puts "============================================================================================="
        # puts "=                            Please Choose From The Following:                              ="
        # puts "=                                                                                           ="
        # puts "=                 1 - 2001 BMW 325i                                                         ="
        # puts "=                 2 - 2004 BMW 330Ci                 ="
        # puts "=                 3 - 2012 BMW Z4                                                           ="
        # puts "=                 4 - 2012 BMW 750i           ="
        # puts "=                 5 - 2015 BMW X3      ="
        # puts "=                 6 - 2004 BMW 330Ci         ="
        # puts "=                 7 -        ="
        # puts "=                 8 -      ="
        # puts "=                 9 -       ="
        # puts "=                 10 -                    ="
        # puts "=                                                                                           ="
        # puts "============================================================================================="
        # puts "=                           Enter 'exit' to shut program down.                              ="
        # puts "=============================================================================================\n\n\n"
        Car.all.each {|car| puts "#{car.id}: #{car.model}"}
        # case menu_input
        # when "1"

            input = CommandLineInterface.gets_user_input
            review = Review.all.find_by car_id: input
            puts review.excerpt
            # print the input "you chose: whatever"
            # look up the matching review
            # if there's no matching review, yell
            # print the review

    #         case input
    #         when "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"
    #             # Car.show_all_reviews(input)
    #             puts "You picked number #{input}"
    #             puts "SHOWS REVIEWS HERE"
    #             puts "SHOWS REVIEWS HERE"
    #             puts "SHOWS REVIEWS HERE"
    #         else
    #             puts "Invalid input....try again"
    #         end
    #
    #     when "4"
    #
    #         input = CommandLineInterface.gets_user_input
    #         case input
    #         when "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"
    #             # Car.show_avg_rating(input)
    #             puts "You picked number #{input}"
    #             puts "SHOWS RATINGS HERE"
    #             puts "SHOWS RATINGS HERE"
    #             puts "SHOWS RATINGS HERE"
    #         else
    #             puts "Invalid input....try again"
    #         end
    #
    #     else
    #         puts "Invalid input....try again"
    #         puts "Oh shit....what happens now?!"
    #
    #     end
    #     sleep 3
    #     show_options
    #     pick_options
    end

    ###=== Displays Cars To Choose Handler ===###
    def self.display_users
        # puts "============================================================================================="
        # puts "=                            Please Choose From The Following:                              ="
        # puts "=                                                                                           ="
        # puts "=                           1 - Steve           6 - Tom Carroll                             ="
        # puts "=                           2 - muguy83         7 - 3sons66                                 ="
        # puts "=                           3 - Rogerio R.      8 - Jim Fisher                              ="
        # puts "=                           4 - Jonah           9 - LuAnn                                   ="
        # puts "=                           5 - WHOOPZEE        10 - Dr. Karl                               ="
        # puts "=                                                                                           ="
        # puts "============================================================================================="
        # puts "=                           Enter 'exit' to shut program down.                              ="
        # puts "=============================================================================================\n\n\n"
        User.all.each {|user| puts "#{user.id}: #{user.name}"}
        input = CommandLineInterface.gets_user_input
        # user = User.find(input)
        # puts user.name

        # user_review = Review.all.find_by user_id: input
        # puts user_review.excerpt

        Review.reviews_by_user(input)

    #     case input
    #     when "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
    #         # Car.show_all_reviews(input)
    #         puts "SHOW USER REVIEWS"
    #         puts "SHOW USER REVIEWS"
    #         puts "SHOW USER REVIEWS"
    #     else
    #         puts "Invalid input....try again"
    #     end
    #     sleep 7
    #     show_options
    #     pick_option
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
