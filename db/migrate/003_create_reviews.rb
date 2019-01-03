

class CreateReviews < ActiveRecord::Migration[5.0]
    def change
        create_table :reviews do |t|
            t.string    :title
            t.integer   :author
            t.string    :excerpt
            t.string    :date
            t.integer   :rating
            t.integer   :car_id
        end
    end
end
