class AddUserIdToExamples < ActiveRecord::Migration[5.1]
  def change
    add_reference :examples, :user, foreign_key: true
  end
end
