class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia, id: :uuid do |t|
      t.string :name
      t.references :club, type: :uuid, index: true, foreign_key: true
      t.string :location
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
