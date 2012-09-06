class AddNumberOfCountriesToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :number_of_countries, :integer
  end
end
