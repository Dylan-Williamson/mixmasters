class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :engineer_id
      t.integer :service_id

      t.timestamps
    end
  end
end
