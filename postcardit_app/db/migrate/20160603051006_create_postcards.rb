class CreatePostcards < ActiveRecord::Migration
  def change
    create_table :postcards do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
