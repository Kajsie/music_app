class Playlist < ApplicationRecord
  has_many :songs
  validates :title, presence: true, length: { minimum: 3 }
end
