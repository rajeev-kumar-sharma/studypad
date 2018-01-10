class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues, id: :uuid do |t|
      t.string :name
      t.string :country
      t.integer :clubs_count
      t.date :start_date, null: false
      t.date :end_date, null: false

      t.timestamps null: false
    end
  end
end
