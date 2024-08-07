class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.references :order, null: false, foreign_key: true
      t.string :name
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
