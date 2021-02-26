class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.string :position
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
