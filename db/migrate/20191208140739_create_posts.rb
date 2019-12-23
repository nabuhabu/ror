class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.string :title
      t.text :body
      t.float :price

      t.timestamps
    end
  end
end
