require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = nil)
    @total = 0
    @last_price = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @last_price = price
    @total += price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount
      @total -= @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_price
  end


end
