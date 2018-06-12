class MemesController < ApplicationController

  before_action :find_meme, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      redirect_to :root, notice: "The meme was created!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def upvote
    @meme = Meme.find(params[:meme_id])
    Upvote.create!(meme_id: @meme.id)
    redirect_to :root, notice: "You upvoted a meme"
  end

  def downvote
    @meme = Meme.find(params[:meme_id])
    Downvote.create!(meme_id: @meme.id)
    redirect_to :root, notice: "You upvoted a meme"
  end

  private

  def find_meme
    @meme = Meme.find(params[:id])
  end

  def meme_params
    params.require(:meme).permit(
      :img_url
    )
  end

end
