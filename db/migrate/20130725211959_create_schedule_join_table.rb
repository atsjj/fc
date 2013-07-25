class CreateScheduleJoinTable < ActiveRecord::Migration
  def change
    create_join_table :seasons, :teams do |t|
      t.index [:team_id, :season_id], unique: true
    end
  end
end
