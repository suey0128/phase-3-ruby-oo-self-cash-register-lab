require "pry"
class CashRegister 
    attr_accessor :discount, :total, :items

    def initialize (discount=0, total=0, items=[] )
        @discount = discount
        @total = total
        @items = items
    end

    def add_item title, price, quantity=1
        @last_price = price
        @last_quantity = quantity
        n = 0
        while n < quantity 
            @items << title
            n+=1
        end
        @total += price * quantity
    end

    def apply_discount  
        if @discount == 0
            "There is no discount to apply."
        else 
            @total = @total * (100 - @discount) / 100 
            "After the discount, the total comes to $800."
        end  
    end

    def void_last_transaction 
        @total = @total - @last_price * @last_quantity
    end

end

# binding.pry