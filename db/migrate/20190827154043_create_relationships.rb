class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.string :groupLocation
      t.string :placeName

      t.timestamps
    end
    add_index :relationships, :groupLocation
    add_index :relationships, :placeName
    add_index :relationships, [:groupLocation, :placeName], unique: true
  end
end
