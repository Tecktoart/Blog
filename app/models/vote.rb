class Vote < ActiveRecord::Base
  scope :likes, -> { where(score: 1) }
  scope :dislikes, -> { where(score: -1) }
end
