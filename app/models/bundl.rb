class Bundl < ApplicationRecord
  has_many :media_items, dependent: :destroy
end
