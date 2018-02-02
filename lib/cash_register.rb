
require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []

  end
  def add_item(item, price, quantity=1)
        @total += price*quantity
        quantity.times do
          @items <<  item
        end
  end

  def apply_discount
    if @discount > 0
    @total -= (discount*@total)/100
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
  end
  def items
    @items
  end
  def void_last_transaction
    @total = 0
  end
end
