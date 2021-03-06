class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  # user.liked_posts でuserが「いいね！」しているメッセージの一覧を取得できるようになる
  has_many :liked_posts, through: :likes, source: :post
  
  def liked_by?(post)
    likes.find_by(post_id: post.id).present?
  end
end
