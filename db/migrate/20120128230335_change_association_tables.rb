class ChangeAssociationTables < ActiveRecord::Migration
  def up
    remove_column :associations, :type
    remove_column :relationships, :type
  end
end
