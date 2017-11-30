class Playlist < ApplicationRecord
  has_many :songs, dependent: :destroy # NOTE that this dependecy might
  # have to be taken away if the same songs are used for different playlists
  validates :title, presence: true, length: { minimum: 3 }
end


