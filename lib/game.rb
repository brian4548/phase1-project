class Game < ActiveRecord::Base

    has_many :reviews
    has_many :users, through: :reviews

    # attr_accessor :cost, :image
    # attr_reader :name, :genre
    
    # @@all = []

    # def initialize(name, cost, genre)
    #     @name = name
    #     @cost = cost
    #     @genre = genre
    #     @image
    #     self.class.all << self 
    # end

    # def self.all
    #     @@all
    # end

    # def self.count
    #     @@all.count
    # end

    def self.game_genres
        self.all.uniq.sort.map{|games| games.genre}.uniq.sort
    end

    def self.games_in_genre(genre_name)
        Game.all.select {|game| game.genre == genre_name}.uniq.sort
    end

    def self.average_game_price
        self.all.map {|games|games.cost}.sum/self.all.count
    end

    def self.search_game_by_price(budget)
        self.all.select {|games| games.cost <= budget}
    end

    def self.most_owned_game
        max_owned = 0
        name = nil
        game_array = Review.all.map do |review|
            review.game.name
        end
        game_array.uniq.each do |game_name|
            if game_array.count(game_name) > max_owned
                max_owned = game_array.count(game_name)
                name = game_name
            end
        end
        name
    end

    def self.find_by_name(game_name)
        self.all.each do |game|
            if game.name == game_name
                return game
            end
        end 
    end


    def self.average_rating_of_genre
        array2 = []
        rating_array = []
        h = Review.game_rating_comment_hash
        self.game_genres.each do |genre|
            array1 = []
            array2 << genre
                self.games_in_genre(genre).each do |game|
                
                                h.each_key do |key|
                                    if key == game.name
                                        array1 << h[key][:ratings]
                                        
                                    end

                                end
                end
                rating_array << array1
        end
        x = 0
        rating_array.each do |value|
            if value.kind_of?(Array) == true
                rating_array[x] = (value.sum / value.count)
            else
                p false
            end
            x += 1
        end
        rating_array
        array2
        last_arr = []
        y = 0
        array2.each do |value|
            last_arr <<[rating_array[y],value]
            y +=1
        end
        last_arr.sort
    end

    def self.top_five_games_of_all
        array_of_games = []
        h = Review.game_rating_comment_hash
        h.each_key do |key|
            array_of_games << [h[key][:ratings],key]
        end
        array_of_games.sort
    end



end