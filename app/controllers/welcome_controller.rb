class WelcomeController < ApplicationController
  def index
    @movies = Movie.all
    @sorted_movies = @movies.sort_by(&:year).reverse
  end
end