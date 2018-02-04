require "pry"

class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @total += price * quantity
    counter = quantity
    while counter >= 1
      @items << item
      counter -= 1
    end
    @last_transaction = [item, price, quantity]
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_amount = @total * (@discount.to_f/100.to_f)
      @total -= discount_amount.to_i
      # binding.pry
      "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= @last_transaction[1] * @last_transaction[2]
  end


end
