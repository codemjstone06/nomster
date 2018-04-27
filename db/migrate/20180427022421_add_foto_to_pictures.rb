class AddFotoToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :foto, :string
  end
end
