class AddEngineerIdToServices < ActiveRecord::Migration[6.0]
  def change
    change_table :services do |t|
      t.integer :engineer_id
    end
  end
end
