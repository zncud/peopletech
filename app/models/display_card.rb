class DisplayCard < ApplicationRecord
  validates :displaycon, presence: true, uniqueness: true
end
