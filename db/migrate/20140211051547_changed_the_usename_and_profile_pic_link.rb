class ChangedTheUsenameAndProfilePicLink < ActiveRecord::Migration
  def change
  	rename_column :users, :username_link_to_profile_page, :username
  	rename_column :users, :profile_pic_link, :avatar
  end
end
