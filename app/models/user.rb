class User < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  #Relationship table for following 
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed

    #Explanation:
    #By default, in a has_many through association Rails looks for 
    # a foreign key corresponding to the singular version of the association; 
    # in other words, code like "has_many :followeds, through: :relationships"
    #would assemble an array using the followed_id in the relationships table. 
    #But, user.followeds is rather awkward; 
    #far more natural is to use “followed users” as a plural of “followed”,
    #and write instead user.followed_users for the array of followed users. 
    #Naturally, Rails allows us to override the default, 
    #in this case using the :source parameter, which explicitly tells Rails 
    #that the source of the followed_users array is the set of followed ids.

  #Reverse relationship table for followers
  has_many :reverse_relationships,  foreign_key: "followed_id", 
                                    class_name: "Relationship",
                                    dependent: :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

    #Explanations:

    #we will not be making a whole database table just to hold reverse relationships.
    #Instead, we will exploit the underlying symmetry between followers and followed
    #users to simulate a reverse_relationships table by 
    #passing followed_id as the primary key.

    #Note that we actually have to include the class name for this association:
    #has_many :reverse_relationships, foreign_key: "followed_id", class_name: "Relationship"
    #because otherwise Rails would look for a ReverseRelationship class, 
    #which doesn’t exist.

    #in the case of a :followers attribute, Rails will singularize “followers” 
    #and automatically look for the foreign key follower_id in this case. 
    #I’ve kept the :source key to emphasize the parallel structure 
    #with the has_many :followed_users association, 
    #but you are free to leave it off.

#----------------------------------------------------------------  
  #following? method takes in a user, called other_user, 
  #and checks to see if a followed user with that id exists in the database
  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  #follow! method calls create! through the relationships association 
  #to create the following relationship
  def follow!(other_user)
    relationships.create(followed_id: other_user.id)
  end

  #unfollow! just find the relationship by followed id and destroy it
  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy!
  end


end
