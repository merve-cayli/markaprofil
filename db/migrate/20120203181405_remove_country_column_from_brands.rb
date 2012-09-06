class RemoveCountryColumnFromBrands < ActiveRecord::Migration
  def change
    remove_column :brands, :country_id
  end
end
