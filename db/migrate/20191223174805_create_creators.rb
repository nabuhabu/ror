class CreateCreators < ActiveRecord::Migration[5.0]
  def change
    create_table :creators do |t|
      t.string :name
      t.datetime :registration_date
      t.string :city
      t.string :specialization
      t.string :phone_number
      t.belongs_to :myorder

      t.timestamps
    end
  end
end
