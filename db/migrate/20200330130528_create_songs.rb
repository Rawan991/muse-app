class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :title
      t.string :genre

      t.timestamps
    end
  end
end
