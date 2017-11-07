class HomeController < ApplicationController
  access all: [:index], user: {except: [:destroy,:new,:create, :update, :edit, :toggle_status]}, site_admin: :all
  def index
    @meanings = Meaning.all
    @meanings = @meanings.eager_load(:word).where( word: {english_word: params["english_word"]}) if params["english_word"].present?
    @meanings = @meanings.where(meaning: params["meaning"]) if params["meaning"].present?
    @dictionary = Dictionary.new
    @like = Like.new
  end
end
