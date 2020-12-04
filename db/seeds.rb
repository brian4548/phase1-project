


Game.destroy_all
User.destroy_all
Review.destroy_all

game1 = Game.create(name: "God of War", cost: 20,  genre: "Adventure")
game2 = Game.create(name: "God of War II", cost: 40,  genre: "Adventure")
game3 = Game.create(name: "God of War III", cost: 60,  genre: "Adventure")
game4 = Game.create(name: "Dead Space", cost: 15,  genre: "Horror")
game5 = Game.create(name: "Dead Space II", cost: 25,  genre: "Horror")
game6 = Game.create(name: "Dead Space III", cost: 30,  genre: "Horror")
game7 = Game.create(name: "Zelda", cost: 20,  genre: "Fantasy")
game8 = Game.create(name: "Legend of Zelda", cost: 60,  genre: "Fantasy")
game9 = Game.create(name: "Super Mario World", cost: 10,  genre: "Platform")
game10= Game.create(name: "Uncharted", cost: 10,  genre: "Adventure")
game11= Game.create(name: "Uncharted II", cost: 20,  genre: "Adventure")
game12= Game.create(name: "Uncharted III", cost: 25,  genre: "Adventure")
game13= Game.create(name: "Uncharted: Amongs Thieves", cost: 50,  genre: "Adventure")
game14= Game.create(name: "Final Fantasy V", cost: 20,  genre: "Fantasy")
game15= Game.create(name: "Final Fantasy X", cost: 60,  genre: "Fantasy")
game16= Game.create(name: "Call of Duty", cost: 10,  genre: "Action")
game17= Game.create(name: "Call of Duty: Black Ops", cost: 20,  genre: "Action")
game18= Game.create(name: "Modern Warefare", cost: 10,  genre: "Action")
game19= Game.create(name: "Modern Warefare III", cost: 30,  genre: "Action")
game20= Game.create(name: "Resident Evil", cost: 40,  genre: "Horror")
game21= Game.create(name: "Resident Evil II", cost: 50,  genre: "Horror")
game22= Game.create(name: "Super Smash Bros", cost: 60,  genre: "Fantasy")
game23= Game.create(name: "Little Big Planet", cost: 10,  genre: "Fantasy")
game24= Game.create(name: "Mario Kart 8", cost: 50,  genre: "Racing")
game25= Game.create(name: "Need for Speed", cost: 20,  genre: "Racing")
game26= Game.create(name: "Dante's Inferno", cost: 15,  genre: "Adventure")
game27= Game.create(name: "Horizon Zero Dawn", cost: 40,  genre: "Adventure")
game28= Game.create(name: "GTA V", cost: 50,  genre: "Action")
game29= Game.create(name: "GTA: San Andreas", cost: 30,  genre: "Action")
game30= Game.create(name: "Little Big Planet: Kartz", cost: 20,  genre: "Racing")
game31= Game.create(name: "Yoshi's Island", cost: 10,  genre: "Platform")
game32= Game.create(name: "Hollow Knight", cost: 30,  genre: "Platform")
game33= Game.create(name: "Ori", cost: 30,  genre: "Platform")
game34= Game.create(name: "Dead by Daylight", cost: 40,  genre: "Horror")
game35= Game.create(name: "Testing is Free", cost: 80,  genre: "Horror")



user1 = User.create(name: "Bob", username: "abc", password: "12345", age: 24)
user2 = User.create(name: "Alex",username: "qwe", password: "12345", age: 25)
user3 = User.create(name: "Carl",username: "asd", password: "12345", age: 30)
user4 = User.create(name: "Brian",username: "zxc", password: "12345",age: 28)
user5 = User.create(name: "Rhodes",username: "123", password: "12345",age: 15)
user6 = User.create(name: "Jesus",username: "098", password: "12345", age: 33)
user7 = User.create(name: "Garcia",username: "456", password: "12345",age: 24)
user8 = User.create(name: "Angelo",username: "789", password: "12345",age: 19)
user9 = User.create(name: "Raul",username: "abc123", password: "12345",age: 18)

review1 = Review.create(game_id: game1.id,user_id: user1.id,rating: 5,comment: "it was eh")
review2 = Review.create(game_id: game2.id,user_id: user2.id,rating: 8,comment: "DOPE!!!!")
review3 = Review.create(game_id: game3.id,user_id: user3.id,rating: 6,comment: "needs some work!")
review4 = Review.create(game_id: game4.id,user_id: user4.id,rating: 7,comment: "Pretty fun!")
review5 = Review.create(game_id: game5.id,user_id: user5.id,rating: 9,comment: "AMAZING!!")
review6 = Review.create(game_id: game6.id,user_id: user6.id,rating: 8,comment: "cool!!!!")
review7 = Review.create(game_id: game7.id,user_id: user7.id,rating: 7,comment: "good")
review8 = Review.create(game_id: game8.id,user_id: user8.id,rating: 7,comment:"kind of okay")
review9 = Review.create(game_id: game9.id,user_id: user9.id,rating: 4,comment: "don't recomment it")
review10= Review.create(game_id: game10.id,user_id: user1.id,rating: 9,comment: "MUST HAVE!!!")

review11= Review.create(game_id: game11.id,user_id: user1.id,rating: 1,comment:"dont buy it, waste of money")
review12= Review.create(game_id: game12.id,user_id: user2.id,rating: 8,comment: "BADASS!!!")
review13= Review.create(game_id: game13.id,user_id: user3.id,rating: 9,comment: "everyone go and buy it now!")
review14= Review.create(game_id: game14.id,user_id: user4.id,rating: 7,comment:"good enough lol")
review15= Review.create(game_id: game15.id,user_id: user5.id,rating: 6,comment: "the story needs work")
review16= Review.create(game_id: game16.id,user_id: user6.id,rating: 5,comment: "the graphics are terrible")
review17= Review.create(game_id: game17.id,user_id: user7.id,rating: 4,comment:"cleary they didn't know what they were doing")
review18= Review.create(game_id: game18.id,user_id: user8.id,rating: 3,comment:"if only i could return this")
review19= Review.create(game_id: game19.id,user_id: user9.id,rating: 8,comment: "NEED TO TRY!!!!")
review20= Review.create(game_id: game20.id,user_id: user2.id,rating: 9,comment: "GET THIS NOW!!!!")

review21= Review.create(game_id: game21.id,user_id: user1.id,rating: 7,comment:"isokay")
review22= Review.create(game_id: game22.id,user_id: user2.id,rating: 5,comment: "could be better")
review23= Review.create(game_id: game23.id,user_id: user3.id,rating: 8,comment:"Coo Coo!")
review24= Review.create(game_id: game24.id,user_id: user4.id,rating: 9,comment: "LOVE THIS GAME!")
review25= Review.create(game_id: game25.id,user_id: user5.id,rating: 10,comment:"GET IN YOUR CAR, AND BUY IT NOW!")
review26= Review.create(game_id: game26.id,user_id: user6.id,rating: 9,comment: "GREAT STORY!")
review27= Review.create(game_id: game27.id,user_id: user7.id,rating: 7,comment:"great story, but lacks quality")
review28= Review.create(game_id: game28.id,user_id: user8.id,rating: 6,comment: "I wonder if i can return it?")
review29= Review.create(game_id: game29.id,user_id: user9.id,rating: 8,comment:"Great game! Try every level!")
review30= Review.create(game_id: game30.id,user_id: user3.id,rating: 8,comment: "Interesting plot and story! Make a sequel1")

review31= Review.create(game_id: game31.id,user_id: user1.id,rating: 8,comment: "cool")
review32= Review.create(game_id: game32.id,user_id: user2.id,rating: 8,comment: "cool")
review33= Review.create(game_id: game33.id,user_id: user3.id,rating: 8,comment: "cool")
review34= Review.create(game_id: game34.id,user_id: user4.id,rating: 8,comment: "cool")
review35= Review.create(game_id: game35.id,user_id: user5.id,rating: 9.5,comment: "cool")
review36= Review.create(game_id: game1.id,user_id: user6.id,rating: 9,comment: "good")
review37= Review.create(game_id: game3.id,user_id: user7.id,rating: 7,comment:"great")
review38= Review.create(game_id: game2.id,user_id: user8.id,rating: 8,comment: "cool")

review39= Review.create(game_id: game10.id,user_id: user1.id,rating: 8,comment: "only gave ive downloaded all dlc's for")
review40= Review.create(game_id: game12.id,user_id: user2.id,rating: 6,comment: "could be better......not")
review41= Review.create(game_id: game13.id,user_id: user3.id,rating: 4,comment: "bleh")
review42= Review.create(game_id: game15.id,user_id: user4.id,rating: 7,comment: "too many missions")
review43= Review.create(game_id: game19.id,user_id: user5.id,rating: 5,comment: "on my way to return it")
review44= Review.create(game_id: game20.id,user_id: user6.id,rating: 9,comment: "had to buy the deluxe version")
review45= Review.create(game_id: game23.id,user_id: user7.id,rating: 7,comment: "too many characters")

review46= Review.create(game_id: game25.id,user_id: user1.id,rating: 7,comment:"great")
review47= Review.create(game_id: game35.id,user_id: user3.id,rating: 9.8,comment: "Very fun, need to try this!!!!")
review48= Review.create(game_id: game35.id,user_id: user4.id,rating: 9.6,comment: "Impressed!!")
review49= Review.create(game_id: game35.id,user_id: user6.id,rating: 9,comment:"pretty good, expected it to be free tho!")
review50= Review.create(game_id: game35.id,user_id: user9.id,rating: 10,comment: "This testing definetely no free! BUT ITS SO AMAZING!!! MUST CHECK IT OUT!!!!")

review51= Review.create(game_id: game33.id,user_id: user1.id,rating: 7,comment:"give it another try")
review52= Review.create(game_id: game32.id,user_id: user2.id,rating: 9,comment: "been playing every day")
review53= Review.create(game_id: game31.id,user_id: user3.id,rating: 7,comment:"great")
review54= Review.create(game_id: game30.id,user_id: user4.id,rating: 9,comment: "good")
review55= Review.create(game_id: game29.id,user_id: user5.id,rating: 7,comment:"sucks")
review56= Review.create(game_id: game26.id,user_id: user6.id,rating: 9,comment: "wish i made it myself")
review57= Review.create(game_id: game24.id,user_id: user7.id,rating: 7,comment:"i want some tacos")
review58= Review.create(game_id: game23.id,user_id: user8.id,rating: 9,comment: "tacos and gaming, best combo!")
review59= Review.create(game_id: game20.id,user_id: user9.id,rating: 5,comment:"id rather go for a walk")
review60= Review.create(game_id: game15.id,user_id: user9.id,rating: 8,comment: "cool")



