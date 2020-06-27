class DisplayCard < ApplicationRecord
  validates :content, presence: true, uniqueness: true
end
