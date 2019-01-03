

class CommandLineInterface


    def self.start_program
        show_options
        # pick_option
    end

    def self.show_options
        puts "============================================================================================="
        puts "=                                        Main Menu                                          ="
        puts "============================================================================================="
        puts "=                                                                                           ="
        puts "=                            1 - View Reviews By Car Selection                              ="
        puts "=                            2 - View Reviews By User                                       ="
        puts "=                            4 - View Rating For Selected Car                               ="
        puts "=                            3 - View Top Rated Cars                                        ="
        puts "=                            5 - MORE OPTIONS HERE SOON                                     ="
        puts "=                                                                                           ="
        puts "============================================================================================="
        puts "=                           Enter 'exit' to shut program down.                              ="
        puts "=============================================================================================\n\n\n"
    end

end
