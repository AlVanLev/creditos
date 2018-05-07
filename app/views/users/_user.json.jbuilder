json.extract! user, :id, :nombre, :usuario, :contrasena, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
