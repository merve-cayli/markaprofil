class CreateTrivia < ActiveRecord::Migration
  def change
    create_table :trivia do |t|
      t.text :body
      t.references :brand
      
      t.timestamps
    end
  end
end
