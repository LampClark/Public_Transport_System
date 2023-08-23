class Station
    attr_reader :name, :distance, :travel_fare

    def initialize(name, distance, travel_fare)
        @name = name
        @distance = distance
        @travel_fare = travel_fare
    end
end
