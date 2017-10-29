class LikesController < ApplicationController
  def index
  end

  def create
    @like = Like.new(like_params)
    if @like.save
      redirect_to request.referrer, notice: 'Like was successfully created.'
    else
      redirect_to request.referrer, alert: 'Like alerady exist' 
    end
  end

  def destroy
  end

  private
    def like_params
      params.require(:like).permit(:example_id).merge(user_id: current_user.id)
    end
end
