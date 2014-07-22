class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :youtube_id, presence: true
  has_many :user_videos
  has_many :users, through: :user_videos
  has_many :comments

  include Tire::Model::Search
  include Tire::Model::Callbacks

  def self.recently_added
    order('created_at desc')
  end
end

