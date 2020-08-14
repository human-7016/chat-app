class Message < ApplicationRecord
  validates :contet, presence: true;

  belongs_to :user
  belongs_to :room
end
