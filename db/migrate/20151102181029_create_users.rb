class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :avatar_uri
      t.string :password_digest
      t.integer :ups_given

      t.timestamps null: false
    end
  end
end
