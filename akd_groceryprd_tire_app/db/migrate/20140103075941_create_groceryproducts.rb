class CreateGroceryproducts < ActiveRecord::Migration
  def change
    create_table :groceryproducts do |t|
      t.string :title
      t.text :content
      t.date :published_on

      t.timestamps
    end
  end
end
