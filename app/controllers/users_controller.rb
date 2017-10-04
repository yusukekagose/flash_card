class UsersController < ApplicationController
  def show
    
  end

  def index
    @users = User.all
  end

  def dictionary
    @user_dictionary = current_user.dictionaries
  end
end
