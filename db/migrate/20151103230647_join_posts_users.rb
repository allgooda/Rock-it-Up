class JoinPostsUsers < ActiveRecord::Migration
  def change
    create_join_table :posts, :users, table_name: :likes
  end
end
