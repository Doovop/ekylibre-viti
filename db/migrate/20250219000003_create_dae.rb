class CreateDAE < ActiveRecord::Migration[7.0]
  def change
    create_table :viti_daes do |t|
      t.string :reference_number, null: false
      t.references :sender, null: false
      t.references :recipient, null: false
      t.references :transporter
      t.date :transport_date, null: false
      t.string :state, null: false
      t.jsonb :details
      t.text :notes
      t.string :emcs_reference
      
      t.timestamps
    end
    
    add_index :viti_daes, :reference_number, unique: true
    add_index :viti_daes, :emcs_reference
  end
end