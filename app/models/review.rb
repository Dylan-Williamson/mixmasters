class Review < ApplicationRecord
    belongs_to :service
    belongs_to :order
    belongs_to :engineer
    belongs_to :client
end
