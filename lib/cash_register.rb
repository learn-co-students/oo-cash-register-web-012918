require 'byebug'

class CashRegister
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(title, price, quantity=1)
    @item_cost = price*quantity
    @total += @item_cost
    quantity.times do self.items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total *= (1-(@discount/100.0))
      "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @item_cost
  end
end
