class PoemsController < ApplicationController
  def index
    @poem = Poem.last
  end

  def create
    @poem = Poem.create(poem_params)
    if @poem.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end
end


private

def poem_params
  params.require(:poem).permit(:noun, :adverb, :pluralnoun, :verb, :adjective, :plant)
end