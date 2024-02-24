class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.string :theme
      t.date :start_date
      t.date :end_date
      t.references :cinema, null: false, foreign_key: true

      t.timestamps
    end
  end
end
