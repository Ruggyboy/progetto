class AddUserAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :location, :string
    add_column :users, :role, :string
    add_column :users, :birth_date, :datetime
  end
end
