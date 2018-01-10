class CreateGoalStats < ActiveRecord::Migration
  def change
    create_table :goal_stats do |t|
      t.integer :goals, default: 0
      t.references :player, type: :uuid, index: true, foreign_key: true
      t.references :game, type: :uuid, index: true, foreign_key: true
      t.references :league, type: :uuid, index: true, foreign_key: true
      t.references :away_club, type: :uuid, index: true

      t.timestamps null: false
    end

    add_foreign_key :goal_stats, :clubs, column: :away_club_id
  end
end
