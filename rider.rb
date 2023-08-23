class Rider
    attr_reader :name, :age, :contact_number, :card
  
    def initialize(name, age, contact_number)
      @name = name
      @age = age
      @contact_number = contact_number
      @card = Card.new(0)
    end

    def travels(origin, destination)
      fare = destination.travel_fare - origin.travel_fare
      abs_fare = fare.abs
      @card.deduct_fare(abs_fare)
  end
end

# test