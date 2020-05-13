class RemoveColumnFromWorkouts < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :duration, :time
  end
end
