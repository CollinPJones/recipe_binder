# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require 'csv'

# csv_text_unit = File.read(Rails.root.join('lib', 'seeds', 'measurement_units.csv'))
# csv_unit = CSV.parse(csv_text_unit, :headers => true, :encoding => 'ISO-8859-1')
# csv_unit.each do |row|
#   u = MeasurementUnit.new
#   u.name = row ['name'].to_s
#   u.measurement_id = Measurement.find_by( name: row['measurement']).id
#   u.save
#   puts "#{u.name} unit for #{u.measurement.name} saved"
# end
#
# puts "There are now #{MeasurementUnit.count} rows in the measurement units table"


# csv_text_ingredient = File.read(Rails.root.join('lib', 'seeds', 'ingredients3.csv'))
# csv_ingredient = CSV.parse(csv_text_ingredient, :headers => true, :encoding => 'ISO-8859-1')
# csv_ingredient.each do |row|
#   i = Ingredient.new
#   i.name = row['name'].to_s
#   i.purchase_container = row['purchase_container'].to_s
#   i.purchase_quantity = row['purchase_quantity'].to_f
#   i.category_id = IngredientCategory.find_by( name: row['category']).id
#   i.purchase_measurement_unit_id = MeasurementUnit.find_by( name: row['purchase_measurement_unit']).id
#   i.save
#   puts "#{i.name} saved"
# end
#
# puts "There are now #{Ingredient.count} rows in the ingredients table"
