class AddNameColumnsToRoleTables < ActiveRecord::Migration
  def change
    add_column :person_roles, :name, :string
    add_column :company_roles, :name, :string
  end
end
