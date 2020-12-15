class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
    # user_idとpost_idの同じ組を複数保存できないように制約をかける
    add_index :likes, [:user_id, :post_id], unique: true
  end
end
