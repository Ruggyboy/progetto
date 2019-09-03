class AddOtherMembersToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :member_2, :integer
	add_column :bands, :member_3, :integer
	add_column :bands, :member_4, :integer
    add_column :bands, :member_5, :integer
  end
end
