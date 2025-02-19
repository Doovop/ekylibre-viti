class CreateDRM < ActiveRecord::Migration[7.0]
  def change
    create_table :viti_drms do |t|
      t.references :campaign, null: false
      t.references :producer, null: false
      t.date :period, null: false
      t.string :state, null: false
      t.jsonb :details
      t.text :notes
      
      t.timestamps
    end
    
    add_index :viti_drms, [:campaign_id, :period], unique: true
  end
end