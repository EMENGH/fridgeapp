require_relative '../config/environment'
require_relative '../app/models/fridge'

loop do
puts "Enter an option:"
puts "A) List all Fridges"
puts "B) Add a fridge"
puts "C) Remove a fridge"
option = gets.chomp.upcase
puts "You selected #{option}"

if option.upcase == 'A'
  all_fridges = Fridge.all
  all_fridges.each_with_index do |fridge|
    puts "#{fridge.location}"
end

elsif option == "B"
   puts "where do you want the fridge"
    fridge_location = gets.chomp
   puts "what brand is the fridge"
   fridge_brand = gets.chomp
   puts "what is the size"
   fridge_size = gets.chomp
   puts "fridge is located in: #{fridge_location} and was manufactured by #{fridge_brand} its size is: #{fridge_size}"
   Fridge.create(location: fridge_location, brand: fridge_brand, size: fridge_brand)

   elsif option == "C"
    puts "the fridge needs to be removed"
    puts "which fridge will be removed"
    remove_brand = gets.chomp
    puts "removed fridge from #{remove_brand}"
    fridge.find_by(brand: remove_brand).delete

   elsif option == "EXIT" || "QUIT"
    break
   end
end