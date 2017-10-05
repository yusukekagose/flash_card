class DictionariesController < ApplicationController
  before_action :set_dictionary, only: [:show, :edit, :update, :destroy]
  def new
    @dictionary = Dictionary.new
    @meanings = Meaning.all
  end

  def create

    @dictionary = Dictionary.new(dictionary_params)
    if @dictionary.save
      redirect_to meanings_path, notice: 'Dicionary was successfully created.'
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

  def create_multiple
    @dictionary = Dictionary.new(dictionary_params)
    if @dictionary.save
      redirect_to meanings_path, notice: 'Dicionary was successfully created.'
    else
      redirect_to meanings_path
    end
  end

  private

  def set_meaning
    @dictionary = Dictionary.find(params[:id])
  end

  def dictionary_params
    params.require(:dictionary).permit(meaning_id:[]).merge(user_id: current_user.id)
  end
end
