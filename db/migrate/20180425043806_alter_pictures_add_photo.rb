class AlterPicturesAddPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :photo, :string
  end
end
