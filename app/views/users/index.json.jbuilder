json.array!(@users) do |user|
  json.extract! user, :name, :email, :password, :confirm
  json.url user_url(user, format: :json)
end