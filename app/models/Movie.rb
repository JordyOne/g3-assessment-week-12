class Movie < ActiveRecord::Base
  validates :name,
            :presence => {:message => "is blank"}
  validates :year,
            :numericality => { only_integer: true },
            :presence => {:message => "is blank"}
  validates :synopsis,
            :presence => {:message => "is blank"}

end