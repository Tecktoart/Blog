class Article < ActiveRecord::Base
  has_many :likes, class_name: 'Vote', through: :likes
  has_many :dislikes, class_name: 'Vote', through: :dislikes
  has_many :comments

  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :user, presence: true
end
