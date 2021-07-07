require 'byebug'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do
      @items << title
    end
    @prices << price
  end

  def apply_discount
    unless @discount == 0
      @total -= ((@discount.to_f / 100.0) * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @prices[-1]
  end
end
