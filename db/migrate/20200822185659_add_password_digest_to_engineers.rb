class AddPasswordDigestToEngineers < ActiveRecord::Migration[6.0]
  def change
    add_column :engineers, :password_digest, :string
  end
end
