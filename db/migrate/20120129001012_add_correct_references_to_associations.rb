class AddCorrectReferencesToAssociations < ActiveRecord::Migration
  change_table :associations do |t|
    t.references :company_role
  end
end
