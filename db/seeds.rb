# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w[Minsk Brest Mogilev].each { |name| City.create(name: name) }

# Car wil have consumables, parts. User will have documents
FactoryBot.create(:user_with_car, email: 'with_car@gmail.com')
FactoryBot.create(:user, role: 'service_owner', email: 'tehanovanton@gmail.com')

FactoryBot.create(:organization_with_service, name: 'apolo')

FactoryBot.create(:order,
                  organizations_services_works_price_id: OrganizationsServicesWorksPrice.last.id,
                  car_id: Car.last.id)
