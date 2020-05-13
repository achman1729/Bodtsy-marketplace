class RemoveTrainerFromWorkouts < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :trainer_id, :bigint
  end
end
