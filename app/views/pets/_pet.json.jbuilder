json.extract! pet, :id, :name, :history, :sex, :size, :breed, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
