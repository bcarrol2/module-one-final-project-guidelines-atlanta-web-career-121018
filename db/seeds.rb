
require 'csv'
# user_data = CSV.read('user_class_data.csv')
# car_data = CSV.read('car_class_data.csv')
# review_data = CSV.read('review_class_data.csv')

CSV.foreach('user_class_data.csv') do |row|
  puts "row.inspect"
end
