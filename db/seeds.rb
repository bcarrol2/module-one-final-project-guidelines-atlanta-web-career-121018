
require 'csv'
# user_data = CSV.read('user_class_data.csv')
# car_data = CSV.read('car_class_data.csv')
# review_data = CSV.read('review_class_data.csv')


    CSV.foreach("./db/new_users.csv", {:headers => true}) do |row|
        user_name = row[0]
        user = User.create(name: user_name)
    end

    CSV.foreach("./db/new_car_data.csv", {:headers => true}) do |row|
        # year,make,series,type,model,motor
        year = row[0].to_i
        make = row[1]
        series = row[2]
        car_type = row[3]
        model = row[4]
        motor = row[5]
        car = Car.create(year: year, make: make, series: series, car_type: car_type, model: model, motor: motor)
    end

    # title,excerpt,date,rating,car_id
    CSV.foreach("./db/new_reviews.csv", {:headers => true}) do |row|
        title = row[0]
        excerpt = row[1]
        #TODO: Use datetime....
        date = row[2]
        rating = row[3].to_i
        car_id = row[4].to_i
        review = Review.create(title: title, author: rand(1..10), excerpt: excerpt, date: date, rating: rating, car_id: rand(1..20))
    end
