require 'pry'

class CashRegister

  attr_reader :total, :items, :last_transaction, :discount

  def initialize(*discount)
    @total = 0
    @items = []
    @last_transaction = 0
    if !discount.empty?
      @discount = discount[0].to_f
    end
  end

  def total=(total)
    @total = total
  end

  def last_transaction=(last_transaction)
    @last_transaction = last_transaction
  end

  def add_item(title, price, num=1)
    self.last_transaction = price*num
    self.total += price*num
    num.times {self.items << title}
  end

  def apply_discount
    if discount
      self.total = self.total - (self.total * (self.discount * 0.01))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
