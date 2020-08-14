class CreateEngineers < ActiveRecord::Migration[6.0]
  def change
    create_table :engineers do |t|
      t.string :username
      t.string :name
      t.string :location
      t.integer :rating
      t.text :bio
      t.string :experience

      t.timestamps
    end
  end
end
