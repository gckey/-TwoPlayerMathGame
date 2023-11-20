# game.rb
require './player'
require './question'
require './turn'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def start
    until game_over? do
      play_turn
    end
    announce_winner
  end

  def play_turn
    turn = Turn.new(@current_player)
    turn.play
    switch_player
  end

  def game_over?
    @player1.life.count.zero? || @player2.life.count.zero?
  end

  def announce_winner
    winner = @player1.life.count.zero? ? @player2 : @player1
    puts "#{winner.name} wins with a score of #{winner.score.correct}/#{winner.score.total}"
    puts "----- GAME OVER -----"
    puts "Goodbye!"
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end
end
