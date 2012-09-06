class CreateForeignBrandsTagsJoinTable < ActiveRecord::Migration
  def up
      create_table :foreign_brands_tags, :id => false do |t|
        t.references :tag
        t.references :foreign_brand

        t.timestamps
      end
  end

  def down
    drop_table :foreign_brands_tags
  end
end
