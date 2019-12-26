class CreateMyorders < ActiveRecord::Migration[5.0]
  def change
    create_table :myorders do |t|
      t.float :order_sum
      t.datetime :order_date
      t.integer :amount
      t.belongs_to :myclient
      t.timestamps
    end
  end
end
