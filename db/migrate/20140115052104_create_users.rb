class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :username_link_to_profile_page
      t.string :profile_pic_link
      t.string :num_points
      t.string :num_badges

      t.timestamps
    end
  end
end
