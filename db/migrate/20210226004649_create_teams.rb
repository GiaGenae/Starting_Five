class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :private_key
      t.text :public_key
      t.string :name
      t.string :string
      t.references :coach, foreign_key: [to_table: :user, on_delete: :cascade]
      t.string :password_digest
      t.string :api_key
      t.text :seed_phrase

      t.timestamps null: false
    end
  end
end
