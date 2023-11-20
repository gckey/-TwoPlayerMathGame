# score.rb
class Score
  attr_accessor :correct, :total

  def initialize
    @correct = 0
    @total = 0
  end

  def update_correct
    @correct += 1
  end

  def update_total
    @total += 1
  end
end
