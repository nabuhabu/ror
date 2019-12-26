class CreateMyclients < ActiveRecord::Migration[5.0]
  def change
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
