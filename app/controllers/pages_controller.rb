class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @movies = Movie.all
  end

  def index
    @movies = Movie.all
  end

  def show
  end
end
