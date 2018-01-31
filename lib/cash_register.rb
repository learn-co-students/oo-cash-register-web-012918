require 'pry'
class CashRegister
  attr_accessor :total, :discount, :transaction

@items = []
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times {@items << title}
    @total += (price * quantity)
    @transaction = (price * quantity)
  end

  def apply_discount
    if @discount > 0
      deduction = @total * (@discount.to_f / 100)
      @total -= deduction.to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @transaction 
  end


end
