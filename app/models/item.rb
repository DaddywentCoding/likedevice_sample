class Item < ApplicationRecord
  # itemは1人のユーザーに所属する
  belongs_to :user
end
