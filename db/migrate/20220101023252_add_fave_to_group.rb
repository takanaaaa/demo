class AddFaveToGroup < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :fave, foreign_key: true
  end
end
