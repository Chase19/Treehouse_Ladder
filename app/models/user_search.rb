class UserSearch
	def self.user_search(query)
		search_users = RestClient.get 'http://teamtreehouse.com/users/mention_search.json', {:params => {:query => query}}
		users_array = JSON.parse search_users
		users_array.each { |user|
						
			puts user["username"]
			
			existing_treehouse_user = User.find_by_username(user["username"])
		    
	    	if !existing_treehouse_user
	    		puts "Creating new user."
				User.create(username: user["username"], full_name: user["name"], avatar: user["avatar"])
			else
				puts "Already exists."
			end
		}
	end
end