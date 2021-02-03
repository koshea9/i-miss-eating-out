class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes,
              :closing_time,
              :upcase_menu

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @closing_time = "00:00"
    @upcase_menu =[]
  end

#need to account for edge case where total > 24:00
  def closing_time(hours)
    "#{(opening_time.to_i + hours)}:00"
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
