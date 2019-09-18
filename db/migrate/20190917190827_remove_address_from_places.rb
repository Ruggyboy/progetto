class RemoveAddressFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :address
  end
end
