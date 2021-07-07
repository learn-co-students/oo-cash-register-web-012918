class CashRegister
  attr_accessor :total, :discount
  attr_reader :apply_discount, :items

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @cart = {}
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity.to_f
    quantity.times{@items.push(item)}
    @cart[item] = price * quantity
  end

  def apply_discount
    if @discount
      @total = @total - @total * (@discount.to_f/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    void = @items.last
    @total = @total - @cart[void].to_f
  end
end
