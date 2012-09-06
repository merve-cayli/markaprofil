class AddReferenceToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :company_role_id, :integer
  end
end
