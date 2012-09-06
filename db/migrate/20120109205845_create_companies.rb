class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.references :country

      t.timestamps
    end
    add_index :companies, :country_id
  end
end
