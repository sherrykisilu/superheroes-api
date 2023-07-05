class HeroPower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  # Add validations
  validates :strength, inclusion: { in: ['Strong', 'Weak', 'Average'] }
end
