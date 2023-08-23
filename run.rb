require './rider.rb'
require './card.rb'
require './station.rb'

card = Card.new(0)
rider = Rider.new("Charles", 23, "011-1111111")
puts "Rider name: #{rider.name} | Age: #{rider.age} | Contact Number: #{rider.contact_number}"
puts "Card no: #{rider.card.id_num}"
puts "Card balance: RM #{sprintf('%.2f', rider.card.balance)}" # 0
rider.card.top_up(10)
puts "Card balance after top-up: RM #{sprintf('%.2f', rider.card.balance)}"
puts "Card balance: RM #{sprintf('%.2f', rider.card.balance)}"

station1 = Station.new("Riverson", 4, 2)
station2 = Station.new("One Borneo", 10, 5)

rider.travels(station2, station1)
puts "Card balance after travel: RM #{sprintf('%.2f', rider.card.balance)}"