require_relative '../config/environment'
require 'colorize'

class AppCLI

    def run
        system('clear')
        welcome_page
    end

    def welcome_page
        puts " ʕ•́ᴥ•̀ʔっ♡   Welcome to GameCore   ʕ•́ᴥ•̀ʔっ♡ ".blue
        puts "One and only reliable source for gamers."
        choices = {Sign_In: 1, Create_Account: 2, About: 3, Exit: 4}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            sign_in_page
        elsif val == 2
            system('clear')
            create_new_user
        elsif val == 3
            system('clear')
            about_page
        else
            system('Exit')
        end
    end

    def sign_in_page
        puts "Enter your Username:"
        prompt = TTY::Prompt.new
        name_input = gets.chomp
        puts "Enter your Password:"
        password = prompt.mask(password)
        # @current_user = ""
        @current_user = User.find{|user| user.username == name_input}
        
                # binding.pry
        if @current_user == nil
            puts "incorrect username and password"
            sleep 1
            system('clear')
            sign_in_page
        elsif ((name_input == @current_user.username) && (password == @current_user.password)) == true
            # if ((name_input == @current_user.username) && (password == @current_user.password)) == true
            puts "Currently logging you in......"
            sleep 2
            system('clear')
            main_page
        else
            puts "incorrect username and password"
            sleep 2
            system('clear')
            sign_in_page
            
        end
        
    end

    def create_new_user
        # t.string "name"
        # t.string "username"
        # t.string "password"
        # t.float "age"
        puts "Please fill the following:"
        puts "Enter name:"
            name = gets.chomp
        puts "Enter age:"
            age = gets.chomp
        puts "Create username:"
            username = gets.chomp
        puts "Create password:"
            password = gets.chomp
        
        @current_user = User.create(name: name, age: age, username: username, password: password)
        system('clear')
        puts"Account Created..... Directing you back to main page....."
        sleep 2
        system('clear')
        main_page
    end

    def about_page
        puts "   ᕙ(^▿^-ᕙ)   WELCOME TO GAMECORE!!!!   (>-^▿^)>   \n\n".blue
        puts "Here we have the most honest and accurate reviews for video games."
        puts "We literally have every single title ever created in the world!"
        puts "So come check us out! Create an account right now!"
        puts "If you have an account already, sign in real quick! We have new games and reviews posted daily!!!"
        puts "Come and see what the next game should be in your mind!\n\n"
        puts " [+..••]  [+..••]  [+..••]  [+..••]  [+..••]  [+..••]  ".blue
        choices = {Sign_In: 1, Create_Account: 2, Welcome_Page: 3}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            sign_in_page
        elsif val == 2
            system('clear')
            create_new_user
        else
            system('clear')
            welcome_page
        end
    end

    def main_page

    puts "Welcome to GameCore"
    puts "Games!"+"                      .:'                                  `:.        ".blue                            
    puts "Best Reviews!"+"              ::'                                    `::     ".blue                              
    puts "Use our app"+"               :: :.                                  .: ::   ".blue                              
    puts "to find the"+"               :   `.                                .'   :          ".blue
    puts "best games!!!"+"             `:.  `:.             .              .:'  .:'      ".blue                                   
    puts "                            `::. `::           !           ::' .::'        ".blue                                     
    puts "                                `::.`::.    .' ! `.    .::'.::'         ".blue                                         
    puts "                                  `:.  `::::'':!:``::::'   ::'        ".blue                                          
    puts "Since 2020!"+"                       :'*:::.  .:' ! `:.  .:::*`:      ".blue                                     
    puts "FlatIron Proud!"+"                  :: HHH::.   ` ! '   .::HHH ::    ".blue                                      
    puts "                                ::: `H TH::.  `!'  .::HT H' :::  ".blue                                       
    puts "                                ::..  `THHH:`:   :':HHHT'  ..::     ".blue                                        
    puts "                                `::      `T: `. .' :T'      ::'      ".blue                                         
    puts "                                  `:. .   :         :   . .:' ".blue                                          
    puts "                                    `::'               `::'  ".blue                                           
    puts "                                      :'  .`.  .  .'.  `:   ".blue                                           
    puts "                                      :' ::.       .:: `:  ".blue                                             
    puts "                                      :' `:::     :::' `: ".blue                                              
    puts "                                       `.  ``     ''  .'    ".blue                                               
    puts "                                        :`...........':    ".blue                                                
    puts "                                        ` :`.V   V.': '   ".blue                                                 
    puts "                                         `:  `---'  :'     ".blue
        choices = {Profile: 1, All_Games: 2, Find_By_Genre: 3,Featured_Game: 4, Top_3_Genres: 5, Top_5_Games: 6, Recent_Ratings: 7, Logout: 8}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            profile_page
        elsif val == 2
            system('clear')
            all_games_page
        elsif val == 3
            system('clear')
            find_by_genre_page
        elsif val == 4
            system('clear')
            featured_game_page
        elsif val == 5
            system('clear')
            top_three_rated_genres_page
        elsif val == 6
            system('clear')
            top_five_games_page
        elsif val == 7
            system('clear')
            ten_most_recent_reviews
        else
            system('clear')
            logout_page
        end
        
    end

    def logout_page
        puts "Currently logging you out.....".blue
         sleep 5
        puts "Give me 10 more minutes...........".blue
         sleep 10
        system('clear')
        welcome_page
    end

    def profile_page
        system('clear')
        puts "[+..••]  [+..••]  [+..••]  Profile Page  [+..••]  [+..••]  [+..••]".blue
        puts "\n  Name:   #{@current_user.name}"
        puts "     Age:   #{@current_user.age}"
        puts "Username:   #{@current_user.username}"

        puts "\n\n[+..••]  [+..••]  [+..••]  Owned games:  [+..••]  [+..••]  [+..••]\n".blue

        @current_user.currently_owned_games.each do |array|
                puts "   Game: "  +"  #{array[0]}".blue
                puts "  Genre: "  +"  #{array[1]}".blue
                puts " Rating: "  +"  #{array[2]}".blue
                puts "Comment: "  +"  #{array[3]}".blue
                puts "\n\n"
        end

        choices = {Update_Profile_Info: 1, Create_Review: 2, Delete_Review: 3, Go_Back_To_Main_Page: 4, Logout: 5}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            update_user_settings_page
        elsif val == 2
            system('clear')
            user_create_review_page
        elsif val == 3
            system('clear')
            delete_review_page
        elsif val == 4
            system('clear')
            main_page
        else
            system('clear')
            logout_page
        end
    end

    def user_create_review_page
        system('clear')
        choices = {Yes: 1, No: 2, }
        prompt1 = TTY::Prompt.new
        var = prompt1.select("Would you like to create a review?", choices)
        if var == 1 
            puts "Type the game you would like to review:"
            game_name = gets.chomp
            game = Game.find_by_name(game_name)
            puts "Type the rating you give it:"
            rating = gets.chomp
            puts "Any comments?"
            comment = gets.chomp

            new_review = Review.create(user_id: @current_user.id, game_id: game.id, rating: rating, comment: comment)    
            #t.integer :game_id
            #t.integer :user_id
            #t.float :rating
            #t.string :comment
        end
        
        choices = {Profile_Page: 1,Update_Profile_Info: 2, Go_Back_To_Main_Page: 3, Logout: 4}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            profile_page
        elsif val == 2
            system('clear')
            update_user_settings_page
        elsif val == 3
            system('clear')
            main_page
        else
            system('clear')
            logout_page
        end
    end

    def update_user_settings_page
        puts "User Settings"
        puts "Would you like to change anything?"
        choices = {Name: 1, Age: 2, Username: 3, Password: 4, Back_To_Profile:5}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            name = gets.chomp
            @current_user.name = name
            puts "Updates being applied..."
            sleep 2
            puts "Update successful!"
            system('clear')
            profile_page

        elsif val == 2
            age = gets.chomp
            @current_user.age = age
            puts "Updates being applied..."
            sleep 2
            puts "Update successful!"
            system('clear')
            profile_page

        elsif val == 3
            username = gets.chomp
            @current_user.username = username
            puts "Updates being applied..."
            sleep 2
            puts "Update successful!"
            system('clear')
            profile_page

        elsif val == 4
            password = gets.chomp
            puts"\nMake sure to write it down!"
            @current_user.password = password
            puts "Updates being applied..."
            sleep 2
            puts "Update successful!"
            system('clear')
            profile_page

        else   
            profile_page
        end

    end

    def all_games_page
        @current_game = nil
        Game.all.each do |game|
            puts game.name
        end
        choices = {Find_By_Genre: 1, Find_Game: 2, Go_Back_To_Main_Page: 3}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            find_by_genre_page
        elsif val == 2
            puts "What game would you like to search?"
            @current_game = gets.chomp
            system('clear')
            find_game_by_name_page
        else
            system('clear')
            main_page
        end
    end

    def find_game_by_name_page
        puts "#{@current_game}\n".blue
        h = Review.game_rating_comment_hash
        h.each_key do |key|
            if key == @current_game
                puts "Rating:  ".blue
                p h[key][:ratings]
                puts "Comments: ".blue
                h[key][:comments].each do |v|
                    p v
                end
            end
        end
        puts ""
        
        choices = {Find_By_Genre: 1, Go_To_Profile: 2, Go_Back_To_Main_Page: 3}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            find_by_genre_page
        elsif val == 2
            system('clear')
            profile_page
        else
            system('clear')
            main_page
        end
    end

    def delete_review_page
        puts "\n What game for a review would you like to delete?\n"
            game_name = gets.chomp
            @current_user.delete_user_review(game_name)
        
        sleep 1
        choices = {Go_To_Profile: 1, Go_Back_To_Main_Page: 2}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            profile_page
        else
            system('clear')
            main_page
        end
    end

    def find_by_genre_page
        @current_genre = nil
        prompt = TTY::Prompt.new
        count = 0
        choices = []
        Game.game_genres.each do |game|
            choices << {name: game, value: count}
            count += 1
        end
        choices << {name: "Back To Main Page", value: count+1}
        var1 = prompt.select("What Genre?", choices)  
        if var1 == 0
                    @current_genre = "Action"
        elsif var1 == 1
                    @current_genre = "Adventure"
        elsif var1 == 2
                    @current_genre = "Fantasy"
        elsif var1 == 3
                    @current_genre = "Horror"
        elsif var1 == 4
                    @current_genre = "Platform"
        elsif var1 == 5
                    @current_genre = "Racing"
        else
            system('clear')
            main_page
        end
        system('clear')
            games_under_genre
    end

    def featured_game_page
        system('clear')
        puts "\nBest Game So Far!!! Make sure to buy and try it out!!!!!\n"
        puts ""
        count = 0
        mkey = nil
        h = Review.game_rating_comment_hash
        h.each_key do |key|
            if h[key][:ratings] > count
                count = h[key][:ratings]
                mkey = key
            end
        end
        puts "Feature Game: "+ " #{mkey}".blue
        puts "Rating:  "+"      #{h[mkey][:ratings]}".blue
        puts "Comments:"
        h[mkey][:comments].each do |v|
            puts v.blue
        end
        puts ""
        choices = {Go_To_Profile: 1, Go_Back_To_Main_Page: 2}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            profile_page
        else
            system('clear')
            main_page
        end
    end

    def top_three_rated_genres_page
        system('clear')
        puts "\n Here are the top 3 Genres! \n\n".blue

        x = -1
        z = Game.average_rating_of_genre
        

        3.times do
            puts "Genre: "+" #{z[x][1]}".blue
            puts "Rating:"+" #{z[x][0]}".blue
            puts "\n\n"
            x -= 1
            
        end
        choices = {Top_5_Games: 1, Recent_Reviews: 2, Go_To_Profile: 3, Go_Back_To_Main_Page: 4}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            top_five_games_page
        elsif val == 2
            system('clear')
            ten_most_recent_reviews
        elsif val == 3
            system('clear')
            profile_page
        else
            system('clear')
            main_page
        end
    end

    def ten_most_recent_reviews
        system('clear')
        count = -1
        puts "\nHere are the most recent reviews!\n"
        10.times do
            puts Review.all[count].game.name.blue
            puts Review.all[count].rating
            puts Review.all[count].comment
            puts ""
            count -= 1
        end

        

        choices = {Top_3_Genres: 1, Top_5_Games: 2, Go_To_Profile: 3, Go_Back_To_Main_Page: 4}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            top_three_rated_genres_page
        elsif val == 2
            system('clear')
            top_five_games_page
        elsif val == 3
            system('clear')
            profile_page
        else
            system('clear')
            main_page
        end
    end

    def top_five_games_page
        system('clear')
        puts "\n Here are our 5 top games after our featured game!!!!\n"
        a = Game.top_five_games_of_all
        x = -2
        5.times do
            puts "Game: "+"   #{a[x][1]}".blue
            puts "Rating: "+" #{a[x][0]}".blue
            puts "\n"
            x -= 1
        end
        choices = {Top_3_Genres: 1, Recent_Reviews: 2, Go_To_Profile: 3, Go_Back_To_Main_Page: 4}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            system('clear')
            top_three_rated_genres_page
        elsif val == 2
            system('clear')
            ten_most_recent_reviews
        elsif val == 3
            system('clear')
            profile_page
        else
            system('clear')
            main_page
        end
    end

    def games_under_genre
        @current_game = nil
        Game.games_in_genre(@current_genre).each do |game|
            p game.name
        end
        choices = {Find_Game: 1, Find_By_Genre: 2, Main_Page: 3}
        prompt = TTY::Prompt.new
        val = prompt.select("What would you like to do right now?", choices)
        if val == 1
            puts "\n What game would you like to search?"
            @current_game = gets.chomp
            system('clear')
            find_game_by_name_page
        elsif val == 2
            system('clear')
            find_by_genre_page
        else
            system('clear')
            main_page
        end
    end



end

puts "HELLO WORLD"

AppCLI.new.run