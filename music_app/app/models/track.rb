class Track < ApplicationRecord
  validates :lyrics, :name, :ord, presence: true
  validates :ord, uniqueness: {scope: :album_id}

  belongs_to :album

  has_one :band,
    through: :album,
    source: :band

  
end
