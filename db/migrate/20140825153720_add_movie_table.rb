class AddMovieTable < ActiveRecord::Migration
  def up
    create_table :movies do |t|
      t.string  :name
      t.integer :year
      t.string  :synopsis
    end
  end
end
