class RemoveRoomFromMessage < ActiveRecord::Migration[5.2]
  def change
    remove_reference :messages, :room, foreign_key: true
  end
end
