class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 160} #tweets are capped at 160 chars.
  default_scope -> {order(created_at: :desc)} #newest tweets shown first
end
