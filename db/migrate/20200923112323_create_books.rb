class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|

      t.timestamps
      t.string :name, null: false
      t.integer :price, null: false
      t.string :author, null: false
      t.text :text, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.references :user, null: false, foreign_key: true
    end
  end
end