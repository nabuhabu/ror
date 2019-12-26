class Myorder < ApplicationRecord
  belongs_to :myclient
  belongs_to :item

  validates :order_date,  :presence => {:message => "Заповніть дату замовлення"}
  validates :amount, numericality: {greater_than: 0, :message => "Скільки одиниць товару замовлено? (не менше однієї)"}

end
