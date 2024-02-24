class AddSurveyReferenceToMovies < ActiveRecord::Migration[7.1]
  def change
    add_reference :movies, :survey, null: false, foreign_key: true
  end
end
