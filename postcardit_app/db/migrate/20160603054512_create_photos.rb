class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :location
      t.integer :user_id
      t.string :image
      t.datetime :taken_at

      t.timestamps

    end
  end
end
