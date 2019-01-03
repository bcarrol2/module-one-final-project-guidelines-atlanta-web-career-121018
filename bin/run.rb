require_relative '../config/environment'

# write methods here
system "clear"
CommandLineInterface.start_program



####################################################################
#######                     Git Commands                     #######
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
#

# cat ./db/car_class_data.csv | cut -d,  -f2- |sort|uniq |gshuf -n 20 > ./db/emilys20car.csv
#
