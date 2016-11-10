class AddFilenameToMp3 < ActiveRecord::Migration[5.0]
  def change
    add_column :mp3s, :filename, :string
    add_column :mp3s, :data, :string
  end
end
