require 'pry'

class CashRegister

attr_accessor :total, :employee_discount

  def initialize(*employee_discount)
    @total = 0
    @employee_discount = employee_discount
  end

  def discount
    # binding.pry
    @employee_discount = self.total * employee_discount.join.to_i
  end

  # def discount (amount)
  # @employee_discount = employee_discount
  # binding.pry
  # employee_discount = total(amount)
  # end


  def add_item (title, price, quantity)
    # binding.pry
    @total += price
  end

end
