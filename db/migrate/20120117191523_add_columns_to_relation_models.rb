class AddColumnsToRelationModels < ActiveRecord::Migration
  def change
    add_column :associations, :type, :string
    add_column :relationships, :type, :string
  end
end
