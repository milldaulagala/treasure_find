json.extract! item, :id, :name, :description, :condition, :manufacture, :manufacture_date, :image_data, :dimension, :weight, :user_id, :created_at, :updated_at
json.url item_url(item, format: :json)
