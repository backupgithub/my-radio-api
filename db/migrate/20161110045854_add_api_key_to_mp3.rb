class AddApiKeyToMp3 < ActiveRecord::Migration[5.0]
  def change
    add_column :mp3s, :apy_key, :string
  end
end
