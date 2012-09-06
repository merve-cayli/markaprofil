class AddCountryBackToBrands < ActiveRecord::Migration
  change_table :brands do |t|
    t.references :country
  end
end
