class CreateCountryRoles < ActiveRecord::Migration
  def change
    create_table :country_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
