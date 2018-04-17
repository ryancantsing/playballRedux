class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :sender
      t.references :recipient
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
