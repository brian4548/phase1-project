class User < ActiveRecord::Base
    has_many :reviews
    has_many :games, through: :reviews

    # attr_accessor :name, :age
    #

    # @@all_users = []

    # def initialize(name,age)
    #     @name = name
    #     @age = age
    #     self.class.all << u1self
    # end

    # def self.all
    #     @@all_users
    # end

    # def self.count
    #     @@all_users.count
    # end

    # def total_reviews
    #     Review.all.select {|review| review}.map
    # end

    def new_review(game,rating,comment)
        game_id = Game.find_by_name(game)
        Review.create(rating: rating,
                    comment: comment,
                    game_id: game_id.id,
                    user_id: self.id
                    )
    end

    def self.find_by_name(name)
        User.all.each do |user|
            if user.username == name
                return user
            end
        end
    end
    
    def user_reviews
        Review.all.select {|review| review.user == self}
    end

    def currently_owned_games
        arra1 = self.user_reviews.map {|review| [review.game.name, review.game.genre,review.rating,review.comment]}
    end

    def delete_user_review(game_name)
        
        self.user_reviews.each do |review|
            if review.game.name == game_name
            
                review.destroy
                puts "Deleting review....."
            else
                puts "No review found for that game"
            end
        end
    end




end