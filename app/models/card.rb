class Card < ApplicationRecord
  validates :content, presence: true
end
