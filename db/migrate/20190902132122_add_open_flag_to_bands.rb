class AddOpenFlagToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :open, :boolean
  end
end
