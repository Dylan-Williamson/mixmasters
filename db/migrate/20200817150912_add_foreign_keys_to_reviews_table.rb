class AddForeignKeysToReviewsTable < ActiveRecord::Migration[6.0]
  def change
    change_table :reviews do |t|
      t.integer :user_id
      t.integer :service_id
      t.integer :order_id
    end
  end
end
