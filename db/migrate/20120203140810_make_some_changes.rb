class MakeSomeChanges < ActiveRecord::Migration
  def change
    remove_column :brands, :industry_id
    
    create_table :brands_products, :id => false do |t|
      t.references :brand
      t.references :product
      
      t.timestamps
    end
    
    create_table :brands_industries, :id => false do |t|
      t.references :brand
      t.references :industry
      
      t.timestamps
    end
    add_index :brands_products, :brand_id
    add_index :brands_products, :product_id
    add_index :brands_industries, :brand_id
    add_index :brands_industries, :industry_id
    
  end
end
