class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # /users/new

  # create
  #POST
  def create
    @user = User.new(user_params)
    if @user.save

    else

    end
  end

  # index

  # show

  # edit

  # update

  # destroy
  private

  def user_params
    params.require(:user).permit(:name)
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
