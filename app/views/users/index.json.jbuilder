json.array!(@users) do |user|
  json.extract! user, :id, :full_name, :username_link_to_profile_page, :profile_pic_link, :num_points, :num_badges
  json.url user_url(user, format: :json)
end
