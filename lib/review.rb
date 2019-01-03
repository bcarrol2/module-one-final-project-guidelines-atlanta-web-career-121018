

class Review < ActiveRecord::Base

    belongs_to :car
    belongs_to :user

    # write methods here

    def review_by_car_id
      a = Review.all.map {|car| car.car_id}
      a.take(100)
    end

    def review_by_author
      Review.all.map do |rev|
        rev.author
      end
    end

    


end
