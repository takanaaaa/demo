class AddUserIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :user_id, foreign_key: true
  end
end
