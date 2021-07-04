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

  def add_item(title, price, quantity = 1)
    @prev_total = @total
    @total += price * quantity
    @items.fill(title, @items.size, quantity)
  end

  def apply_discount
    if @discount > 0 
      @total = @total * (100 - @discount) / 100
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @prev_total
  end

end
