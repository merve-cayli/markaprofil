class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.references :brand
      t.references :company

      t.timestamps
    end
    add_index :associations, :brand_id
    add_index :associations, :company_id
  end
end
