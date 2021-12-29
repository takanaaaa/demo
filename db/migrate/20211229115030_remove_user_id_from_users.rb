class RemoveUserIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :user_id, foreign_key: true
  end
end
