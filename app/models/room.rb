class Room < ApplicationRecord
  validates :name, presence: true
  has_many :rooms, dependent: :destroy
end
