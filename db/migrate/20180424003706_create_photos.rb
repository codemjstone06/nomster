class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :name,         :null => false
      t.binary :data,         :null => false
      t.string :filename
      t.string :mime_type
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end
  end

   def self.down
    drop_table :photos
  end

  add_index :photos, [:user_id, :place_id]
  add_index :photos, :place_id
  


end
