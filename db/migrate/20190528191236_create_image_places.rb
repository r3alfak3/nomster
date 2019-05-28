class CreateImagePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :image_places do |t|
      t.text :caption
      t.string :imagePlace
      t.integer :user_id
      t.integer :place_id
      t.timestamps
    end
    add_index :image_places, [:user_id, :place_id]
    add_index :image_places, :place_id
  end
end
