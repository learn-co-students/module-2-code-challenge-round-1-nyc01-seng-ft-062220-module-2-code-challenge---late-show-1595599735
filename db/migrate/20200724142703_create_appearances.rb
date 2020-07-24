class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.references :guest, foreign_key: true, null: false
      t.references :episode, foreign_key: true, null: false
      t.integer :rating

      t.timestamps
    end
  end
end
