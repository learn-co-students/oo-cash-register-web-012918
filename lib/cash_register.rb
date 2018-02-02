
require 'pry'
class CashRegister
  attr_accessor :total, :discount
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  def add_item(item, price, quantity=1)
        @total += price*quantity
  end

  def apply_discount
    if @discount = 0
      "After the discount, the total comes to $0."
    else
    @total -= (discount*@total)/100
    "After the discount, the total comes to $#{@total}."
    binding.pry


  end
  end
end
