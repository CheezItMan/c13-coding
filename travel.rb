puts "Welcome to the Expense Tracker"
puts "Please provide some information: "

MAX_TRIPS = 3
BAG_PRICE = 50

trip_1 = 0
trip_2 = 0
trip_3 = 0
trip_4 = 0
total_flights = 0
total = 0
total_accomadations = 0
trip_number = 0


puts "Please input the following for trip  # #{trip_number + 1}"
print "Round Trip Ticket Price => $"
ticket = gets.chomp.to_f

puts
print "How many bags did you check? => "
bags = gets.chomp.to_i * 50

puts
print "Price of accommodations => $"
hotel = gets.chomp.to_f

total_flights += bags + ticket
total_accomadations += hotel
total = total_flights + total_accomadations
trip_1 = bags + ticket + hotel

puts 
puts
puts

# Trip 2
trip_number += 1
puts "Please input the following for trip  # #{trip_number + 1}"
print "Round Trip Ticket Price => $"
ticket = gets.chomp.to_f

puts
print "How many bags did you check? => "
bags = gets.chomp.to_i * 50

puts
print "Price of accommodations => $"
hotel = gets.chomp.to_f

total_flights += bags + ticket
total_accomadations += hotel
total = total_flights + total_accomadations
trip_2 = bags + ticket + hotel

puts 
puts
puts

# Trip 3
trip_number += 1
puts "Please input the following for trip  # #{trip_number + 1}"
print "Round Trip Ticket Price => $"
ticket = gets.chomp.to_f

puts
print "How many bags did you check? => "
bags = gets.chomp.to_i * 50

puts
print "Price of accommodations => $"
hotel = gets.chomp.to_f

total_flights += bags + ticket
total_accomadations += hotel
total = total_flights + total_accomadations
trip_3 = bags + ticket + hotel


puts "---"
puts 
puts "You have a total of $#{total} in expenses for these trips."


if trip_1 > trip_2 && trip_1 > trip_3
  most_expensive_trip = 1
  most_expensive_cost = trip_1
elsif trip_2 > trip_3
  most_expensive_trip = 2
  most_expensive_cost = trip_2
else
  most_expensive_trip = 3
  most_expensive_cost = trip_3
end

puts "For trip 1 you spent a total of #{trip_1} or about #{(trip_1 / total * 10000).to_i * 0.01}% of your total expenses"
puts "For trip 2 you spent a total of #{trip_2} or about #{(trip_2 / total * 10000).to_i * 0.01}% of your total expenses"
puts "For trip 3 you spent a total of #{trip_3} or about #{(trip_3 / total * 10000).to_i * 0.01}% of your total expenses"

puts "Your most expensive trip was number #{most_expensive_trip} for a cost of #{most_expensive_cost}"
puts "You sent about $#{total_flights} on flights and about $#{total_accomadations} on accommodations"