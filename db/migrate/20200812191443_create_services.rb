class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.text :requirements

      t.timestamps
    end
  end
end
