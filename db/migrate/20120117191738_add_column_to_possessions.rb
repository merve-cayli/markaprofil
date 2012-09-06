class AddColumnToPossessions < ActiveRecord::Migration
  def change
    add_column :possessions, :quantity, :number
  end
end
