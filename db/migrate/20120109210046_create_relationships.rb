class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :people
      t.references :brand

      t.timestamps
    end
    add_index :relationships, :people_id
    add_index :relationships, :brand_id
  end
end
