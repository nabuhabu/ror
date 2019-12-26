class Delivery < ApplicationRecord
  belongs_to :myorder
  validates :price, :presence => {:message => "Вкажіть ціну доставки"}
end
