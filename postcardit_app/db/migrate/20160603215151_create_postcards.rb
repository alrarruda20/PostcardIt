class CreatePostcards < ActiveRecord::Migration
  def change
    create_table :postcards do |t|
      t.text :message
      t.integer :photo_id
      t.integer :recipient_id

      t.timestamps

    end
  end
end
