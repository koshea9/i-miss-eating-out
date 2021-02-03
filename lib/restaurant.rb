class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes,
              :upcase_menu

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @upcase_menu =[]
  end

  def closing_time(hours)
    if (opening_time.to_i + hours) <= 24
      "#{(opening_time.to_i + hours)}:00"
    else
      "#{(opening_time.to_i + hours) - 24}:00"
    end
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    @opening_time.to_i < 12
  end

  upcase_menu = []
  def menu_dish_names
    dishes.each do |dish|
      upcase_menu << dish.upcase
    end
    upcase_menu
  end

end
