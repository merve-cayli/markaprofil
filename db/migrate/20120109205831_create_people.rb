class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :role
      t.references :country

      t.timestamps
    end
    add_index :people, :country_id
  end
end
