class MoviemarksController < ApplicationController

  def new
    @moviemark = Moviemark.new
  end

  def create
    @moviemark = Moviemark.new(params_moviemark)
    if @moviemark.save
      redirect_to list_path
    else
      render new
    end
  end

  private

  def params_moviemark
    params.require(:moviemark).permit(:movie_id, :list_id)
  end
end
