class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.text :caption
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end

    add_index :pictures, [:user_id, :place_id]
    add_index :pictures, :place_id
  end
end
