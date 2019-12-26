require 'faker'
require 'populator'

namespace :datagenerator do
desc "description"
task generatedata: :environment do

#Creator.delete_all
# Creator.populate(10) do |creator|
# creator.name = Faker::Artist.name
# creator.registration_date = Faker::Date.in_date_period
# creator.city = Faker::Address.city
# creator.specialization = Faker::Job.field
# creator.phone_number = Faker::PhoneNumber.cell_phone_with_country_code
# end
# #Item.delete_all
# Item.populate(10) do |item|
# item.name = Faker::Superhero.name
# item.price = Faker::Number.decimal(l_digits: 3, r_digits: 2)
# item.production_date = Faker::Date.in_date_period
# item.storage_time = Faker::Number.between(from: 1, to: 48)
# item.creator_id = Faker::Number.between(from: 1, to: 10)
# end
#Myclient.delete_all
Myclient.populate(10) do |myclient|
myclient.name = Faker::Superhero.name
myclient.birth = Faker::Date.in_date_period
myclient.company = Faker::Company.name
myclient.phone_number = Faker::PhoneNumber.cell_phone_with_country_code
myclient.city = Faker::Address.city
end
# Myorder.delete_all
Myorder.populate(10) do |myorder|
myorder.item_id = Faker::Number.between(from: 1, to: 10)
myorder.order_date = Faker::Date.in_date_period
myorder.amount = Faker::Number.between(from: 1, to: 10)
# myorder.creator_id = Faker::Number.between(from: 1, to: 10)
myorder.myclient_id = Faker::Number.between(from: 1, to: 10)

end
end
end
