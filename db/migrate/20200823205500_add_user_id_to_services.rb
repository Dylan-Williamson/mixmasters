class AddUserIdToServices < ActiveRecord::Migration[6.0]
  def change
    change_table :services do |t|
      t.integer :user_id
    end
  end
end