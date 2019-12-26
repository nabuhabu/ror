class Newmigration < ActiveRecord::Migration[5.0]
  def change
drop_table :myorders
drop_table :myclients
    create_table :myorders do |t|
      t.float :order_sum
      t.datetime :order_date
      t.integer :amount
      t.belongs_to :myclient
      t.belongs_to :item
      t.timestamps
    end

    create_table :myclients do |t|
      t.string :name
      t.datetime :birth
      t.string :company
      t.string :phone_number
      t.string :city

      t.timestamps
    end
  end
end
