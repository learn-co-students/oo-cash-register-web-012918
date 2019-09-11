require 'pry'

class CashRegister

attr_accessor :total, :discount

  def initialize(discount=nil)
    # binding.pry
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item (title, price, quantity=nil)
    if quantity
      @total += price * quantity
      @items += [title] * quantity
    else
      @total += price
      @items << title
    end
  end

  def apply_discount
    if discount
      total_with_discount = @total.to_f - @total.to_f * (@discount.to_f / 100)
      @total = total_with_discount.to_i
      "After the discount, the total comes to $#{total_with_discount.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    
  end

end
