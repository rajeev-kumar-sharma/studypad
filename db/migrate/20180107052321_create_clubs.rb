class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs, id: :uuid do |t|
      t.string :name
      t.integer :players_count

      t.timestamps null: false
    end
  end
end
