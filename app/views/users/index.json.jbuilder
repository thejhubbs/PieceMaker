json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :bio, :account_id, :status
  json.url user_url(user, format: :json)
end
