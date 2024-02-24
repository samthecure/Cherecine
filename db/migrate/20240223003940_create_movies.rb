class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.string :director
      t.date :release_date
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
