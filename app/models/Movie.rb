class Movie < ActiveRecord::Base
  validates :name,
            :presence => {:message => "Your Cage experience could not be added"}
  validates :year,
            :presence => {:message => "Your Cage experience could not be added"}
  validates :synopsis,
            :presence => {:message => "You didn't describe your Cage experience"}

end