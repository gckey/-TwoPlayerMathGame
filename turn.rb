# turn.rb
class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def play
    player_answer = @question.ask_question(@player)
    if @question.correct_answer?(player_answer)
      puts "#{@player.name}: YES! You are correct."
      @player.score.update_correct
    else
      puts "#{@player.name}: Seriously? No!"
      @player.life.lose_life
    end

    @player.score.update_total
    puts "#{@player.name}: #{@player_score}/#{@player_total} vs #{@opponent_name}: #{@opponent_score}/#{@opponent_total}"
    puts "----- NEW TURN -----"
  end
end
