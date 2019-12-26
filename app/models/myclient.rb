class Myclient < ApplicationRecord
  validates :name, :presence => {:message => "Вкажіть ім'я клієнта"}
  validates :birth,  :presence => {:message => "Заповніть дату народження"}
  validates :company, :presence => {:message => "У якій компанії працює Ваш замовник?"}
  validates :phone_number, :presence => {:message => "Вкажіть номер телефону"}
  validates :city, :presence => {:message => "Із якого міста замовник?"}
end
