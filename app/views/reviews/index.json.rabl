object false

child @reviews, object_root: false do

  attributes :id, :restaurant, :body, :published_on, :user

  node(:href, :if => lambda { |review| @user }) do |review|
    user_review_url(@user, review)
  end

  # node :user do |review|
  #   user_url(@user)
  # end
end

# node :links do |review|
#   {
#     user: user_url(@user)
#   }
# end
