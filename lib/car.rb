

class Car < ActiveRecord::Base

    has_many :reviews
    has_many :users, through: :reviews

    # write methods here

    def top_rated_review
      self.reviews.sort_by{|review| review.rating}.pop()
    end

    def rating_for_car
      avg = self.reviews.map {|rev| rev.rating}
      car_rating = avg.sum / avg.length
    end

    def reviews_by_cars
      self.reviews
    end

    def top_rated_cars
      arr = a.map do |car|
        car.rating_for_car
      end
      arr.sort.reverse.take(5)
    end

end




# a = [car1,car2,car3,car4,car5,car6,car7,car8,car9,car10]
# car1 = Car.all.first
# car2 = Car.all.second
# car3 = Car.all.third
# car4 = Car.all.fourth
# car5 = Car.all.fifth
# car6 = Car.all[6]
# car7 = Car.all[7]
# car8 = Car.all[8]
# car9 = Car.all[9]
# car10 = Car.all[10]
