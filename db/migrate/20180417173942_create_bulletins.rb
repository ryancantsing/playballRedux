class CreateBulletins < ActiveRecord::Migration[5.1]
  def change
    create_table :bulletins do |t|
      t.references :player, foreign_key: true
      t.references :team, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
