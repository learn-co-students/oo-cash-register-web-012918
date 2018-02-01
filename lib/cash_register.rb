require 'pry'

class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title,price,quantity=1)
    @total += price * quantity
    quantity.times do
      @items << title
    end

    def last
      @last
    end

    @last = price
  end

  def apply_discount
    @total = @total * (100-@discount)/100
    if @discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    #.pry
    @total -= @last
  end
end
