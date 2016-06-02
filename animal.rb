class  Cat

  attr_accessor :name, :preferred_food, :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
        return " AM"
    else
        return " PM"
    end

  end

  def meow
    p "My name is #{@name} and I eat #{preferred_food} at #{@meal_time}#{eats_at}"
  end
end

cat_1 = Cat.new('Rio', 'fish pringles', 2)
cat_2 = Cat.new('Frello', 'condensed milk', 20 )
cat_1.meow
cat_2.meow
