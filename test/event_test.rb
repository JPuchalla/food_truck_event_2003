require './lib/food_truck'
require './lib/item'
require './lib/event'
require 'minitest/autorun'
require 'minitest/pride'

class EventTest < Minitest::Test

def setup
  @event = Event.new("South Pearl Street Farmers Market")
  @food_truck1 = FoodTruck.new("Rocky Mountain Pies")
  @item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
  @item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
  @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
  @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
end

def test_it_exists
  assert_instance_of Event, @event
end

def test_it_has_attributes
  assert_equal "South Pearl Street Farmers Market", @event.name
  assert_equal [], @event.food_trucks
end

def test_it_can_add_food_truck
  @event.add_food_truck(@food_truck1)

  assert_equal [@food_truck1], @event.food_trucks
end
end
