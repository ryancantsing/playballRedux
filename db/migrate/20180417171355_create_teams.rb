class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
