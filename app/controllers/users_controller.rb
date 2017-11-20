class UsersController < ApplicationController
  def show
    @user_posts = current_user.examples
  end

  def index
    @users = User.all
  end

  def dictionary
    @user_dictionary = current_user.dictionaries

    @dictionary = Dictionary.where(user_id: current_user.id)

    bom = "\xFF\xFE".force_encoding("UTF-16LE")

    respond_to do |format|
      format.html
      format.csv { send_data bom + @user_dictionary.to_csv.encode("UTF-16LE"), filename: "vocabuil.csv" }
      format.xls { send_data bom + @user_dictionary.to_csv(col_sep: "\t").encode("UTF-16LE") }
    end
  end

end
