# require "pry"
class CashRegister

    attr_accessor :total, :discount
    # attr_writer :total, :discount
  
    def initialize(discount = nil)
      @total = 0
      @discount = discount
      @items = []
      
    end

    
    def add_item(title, price, quantity = nil)  
        if (quantity != nil)
            quantity.times do
                self.items << title
            end
            self.total += (price * quantity)
        else
            self.total += price
        end
        return self.total;

    end

    def apply_discount
        if (@discount != nil)
            disc = @discount/100.0
            self.total -= (self.total * disc).to_i
            # self.total = self.total.to_i
            return ("After the discount, the total comes to $#{self.total}.")
        else
            return "There is no discount to apply."
        end
    end
    

  end
#   binding.pry