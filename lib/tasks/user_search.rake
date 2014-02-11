task :find_treehouse_users => :environment do
	UserSearch.user_search
end