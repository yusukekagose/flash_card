class MeaningsController < ApplicationController
  before_action :set_meaning, only: [:show, :edit, :update, :destroy, :meaning_examples,:create_meaning]
  access all: [:index, :show, :new, :edit, :create, :update, :destroy], user: :all


  # GET /meanings
  def index
    @meanings = Meaning.all
    @words = Word.all
    @dictionary = Dictionary.new
  end

  # GET /meanings/1

  def make_examples
    @examples = @meaning.examples
    @example = Example.new
  end

  # GET /meanings/new
  def new
    @meaning = Meaning.new
    @word = Word.find(params[:word_id])
  end

  # GET /meanings/1/edit
  def edit
  end

  # POST /meanings
  def create
    @meaning = Meaning.new(meaning_params)
    @word = Word.find(params[:word_id])
    @meaning.word_id = @word.id
    if @meaning.save
      redirect_to root_path, notice: 'Meaning was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /meanings/1
  def update
    if @meaning.update(meaning_params)
      redirect_to root_path, notice: 'Meaning was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /meanings/1
  def destroy
    @meaning.destroy
    redirect_to meanings_url, notice: 'Meaning was successfully destroyed.'
  end

  def meaning_examples
    @example = Example.new
    @examples = @meaning.examples
    @like = Like.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meaning
      @meaning = Meaning.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meaning_params
      params.require(:meaning).permit(:meaning, :word_id,:parse, :level, :eiken, :toeic)
    end
end
