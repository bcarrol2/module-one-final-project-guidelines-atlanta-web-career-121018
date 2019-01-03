

class Car < ActiveRecord::Base

    has_many :reviews
    has_many :users, through: :reviews

    # write methods here
    def top_rated
      b = Review.all.map do |rev|
        rev.rating
      end
      b.sort {|a, b| b <=> a }.take(5).pop()
    end

end
