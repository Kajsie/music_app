class Playlist < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
end
