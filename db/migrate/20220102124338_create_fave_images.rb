class CreateFaveImages < ActiveRecord::Migration[5.2]
  def change
    create_table :fave_images do |t|
      t.references :fave, foreign_key: true
      t.string :image_id

      t.timestamps
    end
  end
end
