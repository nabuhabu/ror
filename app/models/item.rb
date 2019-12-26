class Item < ApplicationRecord
    belongs_to :creator
    validates :name, :presence => {:message => "Вкажіть назву творіння"}
    validates :price,  numericality: {greater_than: 0, :message => "Розкрийте вартість цього шедевру, ціна має бути більша за 0"}
    validates :production_date, :presence => {:message => "Коли було створене це диво?"}
    validates :storage_time, numericality: {greater_than: 0, :message => "Скільки місяців служитиме цей витвір?"}
end
