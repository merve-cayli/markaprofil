class CreateForeignBrands < ActiveRecord::Migration
  def change
    create_table :foreign_brands do |t|
      t.string :name
      t.references :country

      t.timestamps
    end
    add_index :foreign_brands, :country_id
  end
end
