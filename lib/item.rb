class Item
  attr_reader :name
  def initialize(item)
    @name = item[:name]
    @cost = item[:price]
  end

  def price
    prc = @cost.delete! "$"
    prc.to_f
  end
end
