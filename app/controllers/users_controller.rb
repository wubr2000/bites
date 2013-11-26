class UsersController < ApplicationController
  # tells controller json is the default
  respond_to :json

  def index
    @users = params[:id] ? User.where('id in (?)', params[:id].split(",")) : User.all
  end

  def create
    user = User.new(user_params)

    if user.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  def update
    user = User.where('id = ?', params[:id]).take

    if user
      if user.update(user_params)
        head :created
      else
        head :unprocessable_entity
      end
    else
      head :not_found
    end
  end

  def destroy
    user = User.where('id = ?', params[:id]).take
    
    if user 
      if @user.destroy
        head :no_content
      else
        head :unprocessable_entity
      end
    else
      head :not_found
    end
  end


  private

  def user_params
    params.require(:user).permit(
      :name
    )
  end

end
