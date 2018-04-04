json.extract! food_item, :id, :title, :expiration_date, :address, :available_start, :available_end, :user_id, :created_at, :updated_at
json.url food_item_url(food_item, format: :json)
