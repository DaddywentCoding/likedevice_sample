class AddLikesCountToPosts < ActiveRecord::Migration[6.0]
  def change
    # デフォルト値を設定
    add_column :posts, :likes_count, :integer, default: 0
  end
end
