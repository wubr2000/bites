class RelationshipsController < ApplicationController

  def index
  	@user = User.first #Just TESTING FOR NOW
  	@relationships = Relationship.all
  end

  def create
  	relationship = Relationship.new(followed_id: :followed_id)

    if relationship.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private

  def relationship_params
    params.require(:relationship).permit(
      :follower_id,
      :followed_id
    )
  end

end