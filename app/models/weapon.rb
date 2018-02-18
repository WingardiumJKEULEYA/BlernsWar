# Model : Weapon
class Weapon < ApplicationRecord
  has_and_belongs_to_many :ninjas

  validates :name, presence: true, length: { in: 3..30 }
  validates :damage, presence: true, numericality: { only_integer: true }
  validates :price, presence: true, numericality: { only_integer: true }
end
