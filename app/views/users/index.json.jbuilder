json.array!(@users) do |user|
  json.extract! user, :id, :full_name, :username, :avatar, :num_points, :num_badges
  json.url user_url(user, format: :json)
end
