class WelcomeController < ApplicationController
  def index
    @movies = Movie.all.sort_by(&:year).reverse
  end
end