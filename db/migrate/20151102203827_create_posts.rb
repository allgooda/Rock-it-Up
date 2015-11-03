class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :description
      t.string :site_found
      t.string :img_uri
      t.integer :report
      t.integer :rock_ups
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
