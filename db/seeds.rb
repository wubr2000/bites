User.destroy_all

users = User.create([
  {
    name: "Drogo",
    credential: "Leader of Dothraki. Horseman Extraordinaire. Dislike Cuts.",
    avatar_href: "http://raccoon.com.br/wp-content/uploads/2011/03/Khal-Drogo.jpg"
  },
  {
    name: "Arya",
    credential: "Ghost of Harrenhal. Valar Morghulis.",
    avatar_href: "http://images5.fanpop.com/image/photos/25400000/Characters-game-of-thrones-25443086-292-400.jpg"
  },
  {
    name: "Khaleesi",
    credential: "Mother of Dragons. Queen of Dothraki. House of Targaryen.",
    avatar_href: "http://www.journaldugeek.com/files/2013/06/khaleesi.jpg"
  },
  {
    name: "Cersei",
    credential: "Queen of Seven Kingdoms. Mother and Aunt of Joffrey.",
    avatar_href: "http://www.paperdroids.com/wp-content/uploads/2013/04/cersei-lannister-image.png"
  },
  {
    name: "Tyrion",
    credential: "The Imp. The Halfman. Hand of the King. ",
    avatar_href: "http://leviathyn.com/wp-content/uploads/2013/06/520181-tyrion_lannister.jpg"
  },
  {
    name: "Little Finger",
    credential: "Lord Baelish of the Eyrie. Master of Coin. Small Councilman.",
    avatar_href: "https://twimg0-a.akamaihd.net/profile_images/1391388163/asdfas-littlefinger.png"
  },
  {
    name: "John Snow",
    credential: "Bastard. Crow. Spy. Wilding Lover. Lord Commander.",
    avatar_href: "http://images3.wikia.nocookie.net/__cb20130325182730/gameofthrones/images/8/8b/Jon-Snow-S3.jpg"
  },
  {
    name: "Bran",
    credential: "Former Climber. Warg. Hodor rider. Prefers Summer.",
    avatar_href: "http://wfiles.brothersoft.com/b/bran-stark_193560-1152x864.jpg"
  },
  {
    name: "Jamie Lannister",
    credential: "The Kingslayer. Joffrey's Father and Uncle.",
    avatar_href: "http://images6.fanpop.com/image/photos/33600000/-Jaime-Lannister-jaime-lannister-33623904-500-277.gif"
  },
  {
    name: "King Beyond the Wall",
    credential: "Mance Rayder. Former Crow. Leader of the Free Folks.",
    avatar_href: "http://www.spyghana.com/wp-content/uploads/2013/04/wpid-ciaran-hinds-got-1364316899.jpg"
  },
  {
    name: "Oberyn Martell",
    credential: "The Red Viper. The Revenger. Slayer of Gregor Glegane.",
    avatar_href: "http://images2.wikia.nocookie.net/__cb20130129172145/hieloyfuego/images/thumb/b/b4/Oberyn_Martell_by_Magali_Villeneuve,_Fantasy_Flight_Games%C2%A9.jpg/575px-Oberyn_Martell_by_Magali_Villeneuve,_Fantasy_Flight_Games%C2%A9.jpg"
  },
  {
    name: "Syrio Forel",
    credential: "The Dancing Master. What Do We Say To Death?",
    avatar_href: "http://www.gameofthrones.tv/wp-content/uploads/2011/11/syrio-500x500.jpg"
  }
])

reviews = Review.create([
  {
    restaurant: "Outback's",
    body: "You know what I learned from losing that duel? I learned that I will never win; not that way. That’s their game, their rules.",
    user: users[0],
    published_on: Time.now
  },
  {
    restaurant: "Blue Butcher",
    body: "There is only one god, and his name is Death. And there is only one thing we say to Death: ‘Not today’",
    user: users[0],
    published_on: Time.now
  },
  {
    restaurant: "Coast",
    body: "I’m a monster, as well as a dwarf. You should charge me double.",
    user: users[1],
    published_on: Time.now
  },
  {
    restaurant: "Manza",
    body: "Look at your khal and you see what life is worth when everything else is stripped away",
    user: users[2],
    published_on: Time.now
  },
  {
    restaurant: "Morton's",
    body: "When dead men, and worse, come hunting for us in the night, do you think it matters who sits on the Iron Throne?",
    user: users[3],
    published_on: Time.now
  },
  {
    restaurant: "Frying Pan",
    body: "I’ve always hated the bells. They ring for horror, a dead king, a city under siege. Tyrion: A wedding. Varys: Exactly.",
    user: users[4],
    published_on: Time.now
  },
  {
    restaurant: "Brunch Club",
    body: "Tell me, if I stabbed the Mad King is the belly instead of the back, would you admire me more?",
    user: users[5],
    published_on: Time.now
  },
  {
    restaurant: "Ruth's Chris",
    body: "Sometimes possession is an abstract concept. When they captured me, they took my purse, but the gold is still mine.",
    user: users[6],
    published_on: Time.now
  },
  {
    restaurant: "Lupo",
    body: "Just so. Opening your eyes is all that is needing. The heart lies and the head plays tricks with us, but the eyes see true. Look with your eyes. Hear with your ears. Taste with your mouth. Smell with your nose. Feel with your skin. Then comes the thinking, afterwards, in that way knowing the truth.",
    user: users[8],
    published_on: Time.now
  },
  {
    restaurant: "Senryo",
    body: "When I was a young boy, before I was cut, I travaled with a troupe of mummers through the Free Cities. They taught me that each man has a role to play, in life as well as mummery. So it is at court. The King’s Justice must be fearsome, the master of coin must be frugal, the Lord Commander of the Knightsguard must be valiant… and the master of whisperers must be sly and obsequious and without scruple. A courageous informer would be as useless as a cowardly knight.",
    user: users[8],
    published_on: Time.now
  },
  {
    restaurant: "Grand Hyatt",
    body: "Don’t call me Lord Snow.” The dwarf lifted and eyebrow. “Would you rather be called the Imp? Let them see that their words can cut you, and you’ll never be free of the mockery. If they want to give you a name, take it, make it your own. Then they can’t hurt you with it anymore.",
    user: users[8],
    published_on: Time.now
  },
  {
    restaurant: "Cafe de Coral",
    body: "Let me give you some counsel, bastard,” Lannister said. “Never forget what you are, for surely the world will not. Make it your strength. Then it can never be your weakness. Armor yourself in it, and it will never be used to hurt you.",
    user: users[11],
    published_on: Time.now
  }
])

comments = Comment.create([
  {
    body: "That's not true. I disagree!",
    review: reviews[0]
  },
  {
    body: "I agree. You're 100% right.",
    review: reviews[1]
  }
])

tags = Tag.create([
  {
    name: "dragons"
  },
  {
    name: "westeros"
  },
  {
    name: "ironthrone"
  },
  {
    name: "winter"
  },
  {
    name: "dracerys"
  },
  {
    name: "whitewalkers"
  },
  {
    name: "direwolves"
  }
])

#many to many seeding: for adding tags to reviews
reviews[0].tags << [ tags[0], tags[1] ]
reviews[1].tags << [ tags[2], tags[1], tags[4] ]
reviews[2].tags << [ tags[2], tags[5], tags[4] ]
reviews[3].tags << [ tags[2], tags[1], tags[6] ]
reviews[4].tags << [ tags[2], tags[6], tags[4] ]
reviews[5].tags << [ tags[3], tags[4], tags[6] ]
reviews[6].tags << [ tags[2], tags[0], tags[5] ]
reviews[7].tags << [ tags[5], tags[6], tags[4] ]
reviews[8].tags << [ tags[2], tags[3], tags[4] ]
reviews[9].tags << [ tags[2], tags[1] ]

#relationship table seeding for followed_users for 1st User
first_user_followings = User.first.relationships.create(followed_id: "3")
first_user_followings = User.first.relationships.create(followed_id: "5")
first_user_followings = User.first.relationships.create(followed_id: "12")
#relationship table seeding for followers for 1st User
first_user_followers = User.first.reverse_relationships.create(follower_id: "2")
first_user_followers = User.first.reverse_relationships.create(follower_id: "3")
first_user_followers = User.first.reverse_relationships.create(follower_id: "5")
first_user_followers = User.first.reverse_relationships.create(follower_id: "7")
first_user_followers = User.first.reverse_relationships.create(follower_id: "8")



