class PoemsController < ApplicationController
  def index
    @poem = Poem.first
  end

  def new
    @poem = Poem.new
  end

  def create
    @poem = Poem.create(poem_params)
    redirect_to root_path
  end
end


private

def poem_params
  params.require(:poem).permit(:noun, :adverb, :pluralnoun, :verb, :adjective, :plant)
end