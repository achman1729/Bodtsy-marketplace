class RemoveUserFromWorkouts < ActiveRecord::Migration[6.0]
  def change
    remove_column :workouts, :user_id, :bigint
  end
end
