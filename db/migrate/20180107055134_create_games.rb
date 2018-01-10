class CreateGames < ActiveRecord::Migration
  def change
    create_table :games, id: :uuid do |t|
      t.references :home_club, type: :uuid, index: true
      t.references :away_club, type: :uuid, index: true
      t.references :league, type: :uuid, index: true, foreign_key: true
      t.references :stadium, type: :uuid, index: true, foreign_key: true
      t.integer :home_goals
      t.integer :away_goals
      t.string :status
      t.date :date
      t.time :time

      t.timestamps null: false
    end

    add_foreign_key :games, :clubs, column: :home_club_id
    add_foreign_key :games, :clubs, column: :away_club_id
  end
end
