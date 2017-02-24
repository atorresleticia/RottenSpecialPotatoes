class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :rating
      t.date :release_date
      t.text :description

      t.timestamps null: false
    end
    add_index :movies, [:user_id, :created_at]
  end
end
