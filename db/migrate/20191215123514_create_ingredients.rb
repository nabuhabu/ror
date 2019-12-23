class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :ingredient_id
      t.string :title
      t.string :country_of_origin
      t.date :production_date
      t.integer :storage_time

      t.timestamps
    end
  end

end
