class AddReferencesToRelationships < ActiveRecord::Migration
  change_table :relationships do |t|
    t.references :person_role
  end
end
