class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.datetime :production_date
      t.integer :storage_time
      t.belongs_to :creator
      t.belongs_to :myorder
      t.timestamps
    end
  end
end
