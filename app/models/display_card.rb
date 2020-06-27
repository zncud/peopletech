class DisplayCard < ApplicationRecord
  validates :content, presence: true
end
