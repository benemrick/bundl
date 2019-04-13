json.extract! media_item, :id, :id, :name, :description, :url, :source, :created_at, :updated_at
json.url media_item_url(media_item, format: :json)
