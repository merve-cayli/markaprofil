class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.references :industry
      t.references :country

      t.timestamps
    end
    add_index :brands, :industry_id
    add_index :brands, :country_id
  end
end
