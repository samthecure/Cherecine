class RemoveCinemaIdFromMovies < ActiveRecord::Migration[7.1]
  def change
    remove_reference :movies, :cinema, null: false, foreign_key: true
  end
end
