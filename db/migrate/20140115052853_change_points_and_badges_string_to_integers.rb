class ChangePointsAndBadgesStringToIntegers < ActiveRecord::Migration
  def change
  	  change_column :users, :num_points, :integer
  	  change_column :users, :num_badges, :integer
  end
end
