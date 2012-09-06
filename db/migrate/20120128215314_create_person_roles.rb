class CreatePersonRoles < ActiveRecord::Migration
  def change
    create_table :person_roles do |t|

      t.timestamps
    end
  end
end
