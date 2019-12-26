class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.float:price

      t.belongs_to :myorder
      t.timestamps
    end
  end
end
