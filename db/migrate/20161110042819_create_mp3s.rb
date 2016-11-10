class CreateMp3s < ActiveRecord::Migration[5.0]
  def change
    create_table :mp3s do |t|
      t.string :album
      t.string :title
      t.string :artist
      t.string :genre
      t.string :email

      t.timestamps
    end
  end
end
