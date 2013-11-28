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
    review = if @user
      @user.reviews.new(review_params)
    else
      Review.new(review_params)
    end

    if review.save
      head :created
    else
      head :unprocessable_entity
    end
  end
  
  def update
    head @review.update(review_params) ? :no_content : :unprocessable_entity
  end
  
  def destroy
    head @article.destroy ? :no_content : :unprocessable_entity
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
      :body,
      :published_on
    )
  end

end