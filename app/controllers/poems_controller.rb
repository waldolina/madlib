class PoemsController < ApplicationController
  def index
    @poem = Poem.first
  end
end
