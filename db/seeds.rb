User.destroy_all

users = User.create([
  {
    name: "Drogo"
  },
  {
    name: "Arya"
  },
  {
    name: "Khaleesi"
  }
])

reviews = Review.create([
  {
    restaurant: "This is a Review",
    body: "blah blah blah blah blah blah",
    user: users[0]
  },
  {
    restaurant: "Third Review",
    body: "Get it? hahahahahaa",
    user: users[0]
  },
  {
    restaurant: "Second post",
    body: "Dracerys!! Dragons!!",
    user: users[1]
  },
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
  }
])

reviews[0].tags << [ tags[0], tags[1] ]
reviews[1].tags << [ tags[2] ]

