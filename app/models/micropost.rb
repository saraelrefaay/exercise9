class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id, :title
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 20 }
  default_scope order: 'microposts.created_at DESC'
end
