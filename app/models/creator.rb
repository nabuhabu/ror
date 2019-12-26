class Creator < ApplicationRecord
  validates :name, :presence => {:message => "Заповніть назву виробника"}
  validates :registration_date, :presence => {:message => "Вкажіть дату реєстрації"}
  validates :city,  :presence => {:message => "Вкажіть місто виробника"}
  validates :specialization, :presence => {:message => "Для якої галузі створюються твори мистецтва цим виробником?"}
  validates :phone_number, :presence => {:message => "Заповніть номер телефону"}
end
