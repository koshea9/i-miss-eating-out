require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'

class RestaurantTest < Minitest::Test
  # Iteration 1 Tests:
  def test_it_exists
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_instance_of Restaurant, restaurant
  end

  def test_it_has_opening_time
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal '10:00', restaurant.opening_time
  end

  def test_it_has_name
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal 'Fuel Cafe', restaurant.name
  end

  def test_it_has_dishes
    # skip
    restaurant = Restaurant.new('10:00', 'Fuel Cafe')

    assert_equal [], restaurant.dishes
  end

  #Iteration 2 Tests:
  def test_it_has_closing_time
    # skip
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('16:00', 'Il Poggio')

    assert_equal '18:00', restaurant1.closing_time(8)
    assert_equal '23:00', restaurant2.closing_time(7)
  end

  def test_closing_time_not_impossible
    restaurant1 = Restaurant.new('24:00', 'Fuel Cafe')
    restaurant2 = Restaurant.new('12:00', 'Fuel Cafe')

    assert_equal '10:00', restaurant1.closing_time(10)
    assert_equal '12:00', restaurant2.closing_time(24)
  end

  def test_it_can_add_dishes
    # skip
    restaurant = Restaurant.new('16:00', 'Il Poggio')

    restaurant.add_dish('Burrata')
    restaurant.add_dish('Pizzetta')
    restaurant.add_dish('Ravioli')

    assert_equal ['Burrata', 'Pizzetta', 'Ravioli'], restaurant.dishes
  end

  #Iteration 3 Tests:

  def test_it_exists
    restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    assert_instance_of Restaurant, restaurant1
  end

  def test_it_can_create_new_instance_with_different_attributes
    restaurant2 = Restaurant.new('16:00', 'Il Posto')
    assert_instance_of Restaurant, restaurant2
  end

  def test_it_is_open_for_lunch_before_noon
    restaurant2 = Restaurant.new('10:00', 'Il Posto')
    assert_equal true, restaurant2.open_for_lunch?
  end

  def test_it_is_closed_for_lunch_after_noon
    restaurant2 = Restaurant.new('13:00', 'Il Posto')
    assert_equal false, restaurant2.open_for_lunch?
  end

  def test_it_can_upcase_dish_names
    restaurant2 = Restaurant.new('13:00', 'Il Posto')

    restaurant2.add_dish('Burrata')
    restaurant2.add_dish('Pizzetta')
    restaurant2.add_dish('Ravioli')
    assert_equal ["BURRATA", "PIZZETTA", "RAVIOLI"], restaurant2.menu_dish_names
  end
end
