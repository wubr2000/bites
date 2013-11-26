object false

child @users, object_root: false do

  attributes :id, :name

  node :href do |user|
    user_url(user)
  end

  node :reviews do |user|
    #user_reviews_url(user)
    user.reviews
  end

  node :followed_users do |user|
    user.followed_users
  end

  node :followers do |user|
    user.followers
  end

  # node :links do |user|
  #   {
  #     reviews: user_reviews_url(user)
  #   }
  # end

end