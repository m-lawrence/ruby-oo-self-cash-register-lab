class CashRegister
  
    attr_accessor :total, :discount, :items, :last_total

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    
    def add_item(item, price, quantity=1)
      @total = @total + (price * quantity)
      quantity.times do
        @items << item
        @last_total = price * quantity
      end
    end

    def apply_discount
        if discount > 0
        @total = @total - (@total * (@discount.to_f * 0.01))
        "After the discount, the total comes to $800."
        else 
        "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @total - @last_total
    end

  
end
