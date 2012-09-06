class CreateJoinTables < ActiveRecord::Migration
  def up
    create_table :brands_tags, :id => false do |t|
      t.references :tag
      t.references :brand

      t.timestamps
    end
    create_table :companies_tags, :id => false do |t|
      t.references :company
      t.references :tag

      t.timestamps
    end
    create_table :people_tags, :id => false do |t|
      t.references :people
      t.references :tag

      t.timestamps
    end
    add_index :brands_tags, :tag_id
    add_index :brands_tags, :brand_id
    add_index :companies_tags, :company_id
    add_index :companies_tags, :tag_id
    add_index :people_tags, :people_id
    add_index :people_tags, :tag_id
  end

  def down
    drop_table :brands_tags
    drop_table :companies_tags
    drop_table :people_tags
  end
end
