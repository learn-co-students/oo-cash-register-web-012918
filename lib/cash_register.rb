
class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    #discount = 20
  end

  def add_item(item, price, quantity = 1)
    quantity.times do
      @items << item
    end
    self.last_transaction = price * quantity
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @discount = (@total*@discount/100)
      @total = @total - @discount
      "After the discount, the total comes to $#{@total}."
    end
  end


  def void_last_transaction
    @total = @total - self.last_transaction
  end

end
