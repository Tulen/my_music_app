class Track < ApplicationRecord
  validates :name, :album, :ord, :lyrics, presence: true
  validates :album, uniqueness: { scope: :ord, message: "An album cannot have
    duplicate track names" }

  belongs_to :album
end
