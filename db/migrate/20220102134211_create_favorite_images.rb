class CreateFavoriteImages < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_images do |t|
      t.references :user, foreign_key: true
      t.references :fave_image, foreign_key: true

      t.timestamps
    end
  end
end
