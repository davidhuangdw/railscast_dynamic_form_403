class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :product_type_id
      t.text :properties

      t.timestamps
    end
    add_index :products, :product_type_id
  end
end
