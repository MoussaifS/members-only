class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :users_id
    remove_column :posts, :index_posts_on_users_id
  end
end
