class CreateCinemas < ActiveRecord::Migration[7.1]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
