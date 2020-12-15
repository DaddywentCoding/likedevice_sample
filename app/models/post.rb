class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, presence: true
  # post.liked_users で post を「いいね!」しているユーザーの一覧を取得できるようになる
  # post.liked_usersという記述を使ってpostをlikesしているuserがとれる
  has_many :liked_users, through: :likes, source: :user
  
  # postをuserが「いいね！」しているときは「true」, いいねしていないときは「false」
  def liked_by?(user)
    likes.find_by(user_id: user.id).present?
  end
   
end
