class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.references :country
      t.references :brand
      t.integer :year

      t.timestamps
    end
    add_index :markets, :country_id
    add_index :markets, :brand_id
  end
end
