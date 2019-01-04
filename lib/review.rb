

class Review < ActiveRecord::Base

    belongs_to :car
    belongs_to :user

    # write methods here

    def reviews_by_user
      self.reviews
    end

    def self.reviews_by_user(input)
      Review.all.each do |rev|
        if rev.user.id.to_s == input
          puts "#{rev.excerpt}\n\n\n"
        end
      end
    end
end
