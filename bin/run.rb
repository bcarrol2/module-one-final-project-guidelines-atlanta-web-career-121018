require_relative '../config/environment'

# write methods here
system "clear"
CommandLineInterface.start_program



####################################################################
#######                  Git & CLI Commands                  #######
####################################################################

# TO PUSH
# git add .
# git commit -m "Comment"
# git branch master HEAD
# git push origin master


# TO PULL
# git fetch origin        # gets you up to date with origin
# git merge origin/master

# TO SEE COMMITS
# git log

# cat ./db/car_class_data.csv | cut -d,  -f2- |sort|uniq |gshuf -n 20 > ./db/emilys20car.csv
