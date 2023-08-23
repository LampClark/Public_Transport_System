class Card
    attr_reader :balance, :expired, :id_num, :card_type, :status
    
    def initialize(balance = 0, card_type) # Provide a default value for card_type.
        @id_num = rand(1..9999)
        @balance = balance
        @expired = false
        
        if @expired == false
            @status = "Active"
        else
            @status = "Expired"
        end
    end

    def top_up(amount)
        @balance += amount
    end

    def deduct_fare(amount)
        @balance -= amount
    end
end