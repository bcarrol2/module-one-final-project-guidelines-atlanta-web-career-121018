

class Car < ActiveRecord::Base

    has_many :reviews
    has_many :users, through: :reviews

    # write methods here

end
