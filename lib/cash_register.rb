require "pry"
class CashRegister
    attr_accessor :total, :discount, :items, :last_item_price

    def initialize(discount=0, total=0, items=[])
        @total = total
        @discount = discount 
        @items = items
    end
    
    def total
        @total
        end
        def add_item(title, price,quantity=1)
            @total += price * quantity
            quantity.times {@items << title}
            @last_item_price = price * quantity
        end
    
        def apply_discount
            @total -= (@total * self.discount/100).to_i
            self.discount>0 ? "After the discount, the total comes to $#{@total}." : "There is no discount to apply."
        end
    
        def items
            @items
        end
    
        def void_last_transaction
            @total -= self.last_item_price
        end
    
    end
    #binding.pry
