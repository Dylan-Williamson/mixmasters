class Order < ApplicationRecord
    belongs_to :engineer, :client, :service
end
