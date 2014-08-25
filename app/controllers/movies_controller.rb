class MoviesController < ApplicationController
  def new
    @movie = Movie.new
    render new_movie_path
  end

  def create
    @movie = Movie.create(name: params[:movie][:name], year: params[:movie][:year], synopsis: params[:movie][:synopsis])
    if @movie.save
      redirect_to root_path
    else
      flash[:notice] = "Your Cage experience could not be added"
      render new_movie_path
    end
  end
end

