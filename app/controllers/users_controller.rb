class UsersController < ApplicationController
  def show
    @user_posts = current_user.examples
  end

  def index
    @users = User.all
  end

  def dictionary
    @user_dictionary = current_user.dictionaries
  end
end
