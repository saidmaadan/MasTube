class User < ActiveRecord::Base
  has_many :user_videos
  has_many :videos, through: :user_videos
end
