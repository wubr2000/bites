class ReviewsController < ApplicationController
  before_action :get_user
  before_action :get_review, only: [ :update, :destroy ]

  respond_to :json

  def index
    @reviews = if params[:id]
      Review.where("id in (?) #{@user_clause}", params[:id].split(','))
    else
      @user ? @user.reviews : Review.all
    end

    #render json: @review, only: [ :restaurant, :body ]

  end

  def create
    @user = User.find(params[:user_id])
    review = @user.reviews.new(review_params)

    if review.save
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

  def get_user
    if params[:user_id]
      head :bad_request unless @user = User.where('id = ?', params[:user_id]).take
    end

    @user_clause = @user ? "and user_id = #{@user.id}" : ""
  end

  def get_review
    head :not_found unless @article =
    Review.where("id = ? #{@user_clause}", params[:id]).take
  end


  def review_params
    params.require(:review).permit(
      :restaurant,
      :body
    )
  end

end