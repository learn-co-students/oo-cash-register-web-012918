require 'pry'

class CashRegister

  attr_accessor :discount, :total, :title, :counter

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @item_list = []
    @counter = 1
    @cost_per_transaction = {}
  end

  def add_item(title, price, quantity=1)
    @title = title
    @total += price*quantity

    quantity.times do
      @item_list << self.title
    end

    @cost_per_transaction[@counter] = price*quantity
    @counter += 1
    #binding.pry

  end

  def apply_discount
    if self.discount != nil
      percent_discount = 1 - (self.discount.to_f / 100.to_f)
      @total = @total * percent_discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @item_list
  end

  def void_last_transaction
    @counter
    @total = @total - @cost_per_transaction.values.last
    #binding.pry
  end
end
