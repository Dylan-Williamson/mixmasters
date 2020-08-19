class Order < ApplicationRecord
    validates :client_id, :engineer_id, :service_id, presence: true

    belongs_to :engineer
    belongs_to :client
    belongs_to :service
    has_one :review
end
