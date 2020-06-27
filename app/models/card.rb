class Card < ApplicationRecord
  validates :content, presence: true, uniqueness: true
end
