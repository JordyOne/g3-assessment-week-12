class MoviesController < ApplicationController
  def new
    @movies = Movie.new
    render new_movie_path
  end

  def create
    @movie = Movie.create(name: params[:movie][:name], year: params[:movie][:year], synopsis: params[:movie][:synopsis])
    if @movie.save
      redirect_to "/"
    else
      flash[:notice] = "Your Cage experience could not be added"
    end
  end
end

