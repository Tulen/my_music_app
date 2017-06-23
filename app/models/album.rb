class Album < ApplicationRecord
  validates :name, :band, :year, presence: true
  validates :band, uniqueness: { scope: :name, message: "A band cannot have
    duplicate album names" }

  belongs_to :band
  has_many :tracks, dependent: :destroy
end
