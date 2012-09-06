class CreatePossessions < ActiveRecord::Migration
  def change
    create_table :possessions do |t|
      t.integer :number
      t.references :asset
      t.references :brand

      t.timestamps
    end
    add_index :possessions, :asset_id
    add_index :possessions, :brand_id
  end
end
