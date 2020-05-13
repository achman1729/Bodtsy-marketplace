class AddColumnToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :duration, :integer
  end
end
