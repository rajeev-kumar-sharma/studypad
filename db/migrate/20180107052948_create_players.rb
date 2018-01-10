class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.references :club, type: :uuid, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
