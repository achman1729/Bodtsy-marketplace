class CreateWorkoutCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_categories do |t|
      t.references :workout, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
