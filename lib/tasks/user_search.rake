task :find_treehouse_users => :environment do
	search_users = RestClient.get 'http://teamtreehouse.com/users/mention_search.json', {:params => {:query => 'a'}}
	users_array = JSON.parse search_users
	users_array.each { |user| 
		User.create(username: user["username"], full_name: user["name"], avatar: user["avatar"])
	}
end