class Bundl < ApplicationRecord
  has_many :media_items, dependent: :destroy
  validates_presence_of :title, :description
end
