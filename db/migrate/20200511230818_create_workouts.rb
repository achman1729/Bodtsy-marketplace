class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.time :duration
      t.references :user, null: false, foreign_key: true
      t.references :trainer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
