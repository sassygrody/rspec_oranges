class OrangeTree

  attr_reader :height, :age, :orange_count
  # Ages the tree one year

  def initialize(age = 0, height = 0)
    @age = age
    @height = height
    @dead = false
    @orange_count = []
  end

  def age!
    if @height > 100
      @dead = true
    else
      @height += 5
    end
    @age += 1
    grow_oranges
    return @age
  end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    !@orange_count.empty?
  end

  def grow_oranges
    if @age > 5
      5.times {@orange_count << Orange.new(4)}
    end
    @orange_count.length
  end


  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?

    # orange-picking logic goes here
      raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
      @orange_count.pop
  end

  def dead?
    @dead
  end

end

class Orange
  attr_reader :diameter

  def initialize(diameter)
    @diameter = diameter
  end

end
