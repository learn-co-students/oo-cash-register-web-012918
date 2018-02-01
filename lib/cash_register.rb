class CashRegister
  attr_accessor :total, :discount, :item



  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @item=({title => price * quantity})
    self.total += price * quantity
      counter = 0
      while counter != quantity
        @items << title
        counter += 1
      end
  end

  def apply_discount
      if discount > 0
        self.total = total.to_f - (total.to_f * discount/100.0)
        return "After the discount, the total comes to $#{self.total.to_i}."
      else
        self.total = total.to_f - (total.to_f * discount/100.0)
        return "There is no discount to apply."
      end
  end

  def items
    @items
  end

  def void_last_transaction
    print self.item.values[0]
    self.total = self.total - self.item.values[0]
  end

end
