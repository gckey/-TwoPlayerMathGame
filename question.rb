# question.rb
class Question
  attr_reader :number1, :number2

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def ask_question(player)
    puts "#{player.name}: What does #{number1} plus #{number2} equal?"
    print "> "
    gets.chomp.to_i
  end

  def correct_answer?(player_answer)
    player_answer == number1 + number2
  end
end
