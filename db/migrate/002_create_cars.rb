

class CreateCars < ActiveRecord::Migration[5.0]
    def change
        create_table :cars do |t|
            t.integer   :year
            t.string    :make
            t.string    :series
            t.string    :type
            t.string    :model
            t.string    :engine
        end
    end
end
