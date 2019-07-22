class Gram < ApplicationRecord
    validates :message, presence: true
    belongs_to :model
end
