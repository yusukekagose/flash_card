class RankingsController < ApplicationController

  before_action :ranking

  def index

  end

  def ranking
    user_ids = Example.group(:user_id).order('count_user_id DESC').count(:user_id).keys
    @user_create_example_ranking = user_ids.map { |id| User.find(id) }

  end

end
