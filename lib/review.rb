

class Review < ActiveRecord::Base

    belongs_to :car
    belongs_to :user

    # write methods here

end
