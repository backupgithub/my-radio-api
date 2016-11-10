class Mp3Serializer < ActiveModel::Serializer
  attributes :id, :album, :title, :artist, :genre, :email
end
