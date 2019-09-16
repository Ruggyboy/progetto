class AddGoogleDeviseAttributesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :remember_token, :string
    add_column :users, :remember_created_at, :datetime
    add_index :users, [:uid, :provider], unique: true
  end
end
