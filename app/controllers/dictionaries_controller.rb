class DictionariesController < ApplicationController
  before_action :set_dictionary, only: [:show, :edit, :update, :destroy]
  def new
    @dictionary = Dictionary.new
  end

  def create
    @dictionary = Dictionary.new(meaning_params)
    if @meaning.save
      redirect_to @meaning, notice: 'Dicionary was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @dictionary .destroy
    redirect_to root_path, notice: 'Meaning was successfully destroyed.'
  end

  def destroy_multiple
   checked_data = params[:deletes].keys
   Dictionary.destroy(checked_data)
   redirect_to root_path
  end

  private

  def set_meaning
    @dictionary = Dictionary.find(params[:id])
  end

  def dictionary_params
    params.require(:dictionary).permit(:meaning_id => []).merge(user_id: current_user.id)
  end
end
