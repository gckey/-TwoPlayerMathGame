# life.rb
class Life
  attr_accessor :count

  def initialize
    @count = 3
  end

  def lose_life
    @count -= 1
  end
end
