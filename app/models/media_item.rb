class MediaItem < ApplicationRecord
  belongs_to :bundl, foreign_key: "bundl_id"
end

