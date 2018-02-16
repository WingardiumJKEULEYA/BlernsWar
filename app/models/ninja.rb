class Ninja < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :weapons

  validates :name, presence: true, length: { in: 3..30 }
  validates :hp, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true, numericality: { only_integer: true }
end
