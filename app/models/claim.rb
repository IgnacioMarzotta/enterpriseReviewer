class Claim < ApplicationRecord
    belongs_to :user
    belongs_to :company
    scope :recent, -> { order("created_at DESC") }
end
