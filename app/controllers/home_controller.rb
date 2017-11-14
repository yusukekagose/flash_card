class HomeController < ApplicationController
  access all: [:index], user: {except: [:destroy,:new,:create, :update, :edit, :toggle_status]}, site_admin: :all
  def index
    @words = Word.all

    @words = @words.eager_load(:meanings).where(meanings: {level: params[:level].to_i}) if params[:level].present?
    @words = @words.eager_load(:meanings).where(meanings: {toeic: params[:toeic].to_i}) if params[:toeic].present?

    @words = @words.where(english_word: params[:english_word]) if params[:english_word].present?
    @words = @words.eager_load(:meanings).where(meanings: {meaning: params[:meaning]}) if params[:meaning].present?
    @words = @words.eager_load(:meanings).where(meanings: {parse: params[:parse]}) if params[:parse].present?

    #@meanings = Meaning.all
    #@meanings = @meanings.eager_load(:word).where(word: {english_word: params[:english_word]}) if params[:english_word].present?
    #@meanings = @meanings.where(meaning: params[:meaning]) if params[:meaning].present?
    @dictionary = Dictionary.new
    @like = Like.new
  end

  def dashboard
  end
end
