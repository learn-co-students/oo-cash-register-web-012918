class CashRegister

  attr_accessor :discount, :total
  attr_reader :items
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total = @total + (price * quantity.to_f)
    quantity.times do @items << title end
  end

  def apply_discount
    if @discount
      @total -= (@total * @discount / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = 0
  end
end
