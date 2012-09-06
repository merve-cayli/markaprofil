class DeleteWrongReferences < ActiveRecord::Migration
  def change
    remove_column :relationships, :company_role_id
  end
end
