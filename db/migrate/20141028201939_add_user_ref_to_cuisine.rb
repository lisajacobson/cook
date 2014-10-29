class AddUserRefToCuisine < ActiveRecord::Migration
  def change
    add_reference :cuisines, :user, index: true
  end
end
