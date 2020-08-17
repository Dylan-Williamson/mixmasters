class Order < ApplicationRecord
    belongs_to :engineer
    belongs_to :client
    belongs_to :service
    has_one :review
end
