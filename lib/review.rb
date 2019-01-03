

class Review < ActiveRecord::Base

    belongs_to :car
    belongs_to :user

    # write methods here

    def reviews_by_user
      self.reviews
    end

    # def save
    #   sql = <<-SQL
    #   INSERT INTO reviews (title, excerpt, date, rating, car_id)
    #   VALUES (?, ?, ?, ?, ?)
    #   SQL
    #   DB[:conn].execute(sql, self.title, self.excerpt, self.date, self.rating, self.car_id)
    #   @id = DB[:conn].execute("SELECT last_insert_rowid() FROM reviews")[0][0]
    # end

    # def self.create_review(title:, self, excerpt:, date:, rating:, car_id:)
    #   review = Review.new(title, self, excerpt, date, rating, car_id)
    #   review.save
    #   review
    # end

    def save
      review. = ?
      review.save
    end

    def create
      Review.create()
    end

end
