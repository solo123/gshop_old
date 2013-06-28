class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.string :model
      t.string :full_name
      t.string :catalog
      t.integer :status, :default => 0
      t.string :product_data_type
      t.integer :product_data_id

      t.timestamps
    end
  end
end
