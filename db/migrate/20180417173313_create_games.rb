class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :home
      t.references :away
      t.boolean :home_confirm
      t.boolean :away_confirm
      t.text :details
      t.datetime :date

      t.timestamps
    end
  end
end
