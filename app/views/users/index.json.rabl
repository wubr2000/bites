object false

child @users, object_root: false do

  attributes :id, :name

  node :href do |user|
    user_url(user)
  end

  node :avatar_href do |user|
    user.avatar_href
  end

  node :credential do |user|
    user.credential
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

  node(:followers_count) { |user| user.followers.count }
  node(:followed_users_count) { |user| user.followed_users.count }

  # node :links do |user|
  #   {
  #     reviews: user_reviews_url(user)
  #   }
  # end

end