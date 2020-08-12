class UsersController < ApplicationController
  
  def edit
  end

  def update
    current_user.update(user_params)
  end

  praivate
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
