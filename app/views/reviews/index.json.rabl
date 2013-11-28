object false

child @reviews.reverse, object_root: false do

  attributes :id, :restaurant, :body, :published_on, :user

  node(:href, :if => lambda { |review| @user }) do |review|
    user_review_url(@user, review)
  end

  


end

# node :links do |review|
#   {
#     user: user_url(@user)
#   }
# end
