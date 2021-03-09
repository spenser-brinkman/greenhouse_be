class AddUserIdToPlantsAndSpaces < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :user_id, :integer
    add_column :spaces, :user_id, :integer
  end
end
