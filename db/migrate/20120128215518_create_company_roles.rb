class CreateCompanyRoles < ActiveRecord::Migration
  def change
    create_table :company_roles do |t|

      t.timestamps
    end
  end
end
