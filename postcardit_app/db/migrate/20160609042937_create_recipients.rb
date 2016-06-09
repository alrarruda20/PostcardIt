class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.integer :photo_id
      t.integer :user_id
      t.string :address
      t.string :name
      t.string :email

      t.timestamps

    end
  end
end
