class AddRemainingColumnsToBrands < ActiveRecord::Migration
 def up
  add_column :brands, :entry_year, :number
  add_column :brands, :number_of_employees, :number
  add_column :brands, :office_address, :text
  add_column :brands, :stock, :boolean
  add_column :brands, :web_address, :string
  add_column :brands, :rate, :number
 end
  def down
    remove_column :brands, :entry_year
    remove_column :brands, :number_of_employees
    remove_column :brands, :office_address
    remove_column :brands, :stock
    remove_column :brands, :web_address
    remove_column :brands, :rate
  end
end
