class AddFirstEntryYearToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :first_entry_year, :integer
  end
end
