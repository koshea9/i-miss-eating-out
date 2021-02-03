class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes,
              :closing_time

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
    @closing_time = "00:00"

  end

#need to account for edge case where total > 24:00
  def closing_time(hours)
    "#{(opening_time.to_i + hours)}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

end
