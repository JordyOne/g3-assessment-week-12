class Movie < ActiveRecord::Base
  validates :name,
            :presence => {:message => "can't be blank"}
  validates :year,
            :numericality => {only_integer: true, :message => "must be a number"},
            :presence => {:message => "can't be blank"}
  validates :synopsis,
            :presence => {:message => "can't be blank"}

end