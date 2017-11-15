class AddVoterToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :likes, :voter, :integer
  end
end
