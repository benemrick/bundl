class MediaItem < ApplicationRecord
  belongs_to :bundl, foreign_key: "bundl_id"
  validates_presence_of :name, :url, :bundl_id
end
