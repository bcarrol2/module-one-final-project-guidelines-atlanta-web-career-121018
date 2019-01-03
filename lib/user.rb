

class User < ActiveRecord::Base

    has_many :reviews
    has_many :cars, through: :reviews

    # def save
    #   sql = <<-SQL
    #   INSERT INTO users (name)
    #   VALUES (?)
    #   SQL
    #   DB[:conn].execute(sql, self.name)
    #   @id = DB[:conn].execute("SELECT last_insert_rowid() FROM users")[0][0]
    # end
    #
    # def create_user(name)
    #   user = User.new(self)
    #   user.save
    #   user
    # end


    def save
      user.name = ?
      user.save
    end

    def create
      User.create(name)
    end

end
