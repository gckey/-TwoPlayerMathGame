# player.rb
require './score'
require './life'

class Player
  attr_reader :name, :score, :life

  def initialize(name)
    @name = name
    @score = Score.new
    @life = Life.new
  end
end
