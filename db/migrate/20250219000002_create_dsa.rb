class CreateDSA < ActiveRecord::Migration[7.0]
  def change
    create_table :viti_dsas do |t|
      t.string :reference_number, null: false
      t.references :sender, null: false
      t.references :recipient, null: false
      t.references :transporter
      t.date :transport_date, null: false
      t.string :state, null: false
      t.jsonb :details
      t.text :notes
      
      t.timestamps
    end
    
    add_index :viti_dsas, :reference_number, unique: true
  end
end