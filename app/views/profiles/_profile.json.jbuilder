json.extract! profile, :id, :first_name, :last_name, :address, :image_data, :introduction, :mobile, :category_id, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
