class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      
      t.string :name, unique: true
      t.text :introduction
      t.integer :owner_id
      
      t.timestamps
    end
  end
end
