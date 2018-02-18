# Model : Battle
class Battle < ApplicationRecord
  has_and_belongs_to_many :ninjas

  validates :winner, presence: true, numericality: { only_integer: true }
end
