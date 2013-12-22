class RelationshipsController < ApplicationController

  def index
  	@user = User.first #Just TESTING FOR NOW
  	@relationships = Relationship.all
  end

  def create
    @user = User.find_by(id: params[:relationships][:follower_id])
    @relationships = Relationship.all

    # NEED TO ADD ERROR MESSAGE FUNCTION IF UNIQUENESS FAILS
  	relationship = @user.relationships.create(followed_id: params[:relationships][:followed_id])

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
    params.require(:relationships).permit(
      :follower_id,
      :followed_id
    )
  end

end