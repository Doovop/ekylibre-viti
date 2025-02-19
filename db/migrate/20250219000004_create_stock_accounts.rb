class CreateStockAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :viti_stock_accounts do |t|
      t.references :product, null: false
      t.decimal :initial_quantity, precision: 19, scale: 4
      t.string :unit
      t.jsonb :properties
      
      t.timestamps
    end
    
    create_table :viti_stock_movements do |t|
      t.references :stock_account, null: false
      t.references :cause, polymorphic: true
      t.decimal :quantity, precision: 19, scale: 4, null: false
      t.datetime :moved_at, null: false
      t.string :direction, null: false
      t.jsonb :details
      
      t.timestamps
    end
    
    add_index :viti_stock_movements, :moved_at
  end
end