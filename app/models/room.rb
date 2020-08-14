class Room < ApplicationRecord
  validates :name, presence: true;

  has_many :messages
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy
end
