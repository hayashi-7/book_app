class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|

      t.timestamps
      t.string :title, null: false
      t.integer :price, null: false
      t.string :author, null: false
      t.text :review, null: false
      t.text :description, null: false
      t.integer :category_id, null: false
      t.text :image, null: false
      t.integer :likes_count
      t.float :star
      t.references :user, null: false, foreign_key: true
    end
  end
end
