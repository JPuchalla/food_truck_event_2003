class FoodTruck
  attr_reader :name, :inventory
  def initialize(truck)
    @name = truck
    @inventory = Hash.new(0)
  end

  def check_stock(item)
  @inventory[item]
  end

  def stock(item, inventory)
    @inventory[item] += inventory
  end

  def potential_revenue
    @inventory.sum { |item, inventory| item.price * inventory}
  end
end
