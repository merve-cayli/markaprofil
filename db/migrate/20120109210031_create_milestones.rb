class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :text
      t.references :brand

      t.timestamps
    end
    add_index :milestones, :brand_id
  end
end
