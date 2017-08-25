# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fridge.destroy_all
Food.destroy_all
Drink.destroy_all

amana = Fridge.create!(location: "Basement",brand: "Amana",size: 3.3)
whirpool = Fridge.create!(location: "Garage",brand: "Whirpool",size: 3.3)
frigidaire = Fridge.create!(location: "Basement",brand: "Frigidaire",size: 3.3)
kenmore = Fridge.create!(location: "Kitchen",brand: "Kenmore",size: 3.3)

amana.foods = [
  Food.create(name: "Steak",weight: "18",isvegan: false)
  Food.create(name: "Pizza",weight: "12",isvegan: false)
  Food.create(name: "salad",weight: "2",isvegan: true)
  Food.create(name: "pasta",weight: "4",isvegan: true)
  Food.create(name: "soup",weight: "3",isvegan: true)
  Food.create(name: "rice",weight: "5",isvegan: true)
]

amana.drinks = [
  Drink.create(name: "Soda",size: "1",isalcohol: false)
  Drink.create(name: "Milk",size: "1",isalcohol: false)
  Drink.create(name: "Beer",size: "6",isalcohol: true)
  Drink.create(name: "Water",size: "1",isalcohol: false)
  Drink.create(name: "Orange Juice",size: "6",isalcohol: false)
  Drink.create(name: "Almond Milk",size: "2",isalcohol: false)
]